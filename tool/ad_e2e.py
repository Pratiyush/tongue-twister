#!/usr/bin/env python3
"""End-to-end check of the three ad formats on a real device or emulator.

Drives a debug build over adb the way a user would, with Google's test ad
units, and fails loudly at the first step that doesn't happen:

  1. The banner shows at the bottom of the home screen.
  2. The pop-up (interstitial) shows when leaving a practice screen after
     5 "I said it!" taps, on a second launch with 10 practices in total.
  3. Settings -> "Go ad-free for 24 hours" plays a rewarded video, saves the
     ad-free time and the banner disappears.

Inside the EEA/UK it answers the consent form with "Do not consent", so ads
must still serve (non-personalised).

Usage:
  flutter build apk --debug
  python3 tool/ad_e2e.py [-s SERIAL] [--out DIR] [--no-install]

Needs a debug build (it seeds preferences with run-as) and an English UI
(it sets the app language to English). Check that a real phone is idle
first: the script taps and presses BACK.
"""

import argparse
import os
import re
import subprocess
import sys
import time
import xml.etree.ElementTree as ET

PKG = 'com.pratiyush.tongue_twister'
APK = 'build/app/outputs/flutter-apk/app-debug.apk'
AD_ACTIVITY = 'com.google.android.gms.ads.AdActivity'

# shared_preferences stores keys with a "flutter." prefix; ints are longs.
# launches=1 becomes 2 on start, so this is the user's second session.
PREFS = """<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <long name="flutter.app.launches" value="1" />
    <string name="flutter.settings.language">en</string>
    <string name="flutter.practice_counts">{&quot;gb-seashells&quot;:10}</string>
</map>
"""

serial = []
out_dir = '.'


def adb(*args, check=True, stdin=None):
    r = subprocess.run(['adb', *serial, *args], capture_output=True,
                       text=True, input=stdin)
    if check and r.returncode != 0:
        sys.exit(f'adb {" ".join(args)} failed: {r.stderr.strip()}')
    return r.stdout


def step(msg):
    print(f'• {msg}', flush=True)


def fail(msg):
    shot('failure')
    sys.exit(f'FAIL: {msg}')


def shot(name):
    path = os.path.join(out_dir, f'{name}.png')
    with open(path, 'wb') as f:
        f.write(subprocess.run(['adb', *serial, 'exec-out', 'screencap', '-p'],
                               capture_output=True).stdout)
    return path


def top_activity():
    m = re.search(r'topResumedActivity=.*? (\S+/\S+)',
                  adb('shell', 'dumpsys', 'activity', 'activities'))
    return m.group(1) if m else ''


def nodes():
    adb('shell', 'uiautomator', 'dump', '/sdcard/ui.xml', check=False)
    xml = adb('shell', 'cat', '/sdcard/ui.xml', check=False)
    try:
        return list(ET.fromstring(xml).iter('node'))
    except ET.ParseError:
        return []


def find(pattern, among=None):
    rx = re.compile(pattern, re.I)
    for n in among if among is not None else nodes():
        if rx.search(n.get('text', '')) or rx.search(n.get('content-desc', '')):
            return n
    return None


def centre(node):
    x1, y1, x2, y2 = map(int, re.findall(r'\d+', node.get('bounds')))
    return (x1 + x2) // 2, (y1 + y2) // 2


def tap(node):
    adb('shell', 'input', 'tap', *map(str, centre(node)))


def size():
    w, h = re.search(r'(\d+)x(\d+)', adb('shell', 'wm', 'size')).groups()
    return int(w), int(h)


def scroll_to(pattern, tries=8):
    w, h = size()
    for _ in range(tries):
        n = find(pattern)
        if n is not None:
            return n
        adb('shell', 'input', 'swipe', str(w // 2), str(h * 3 // 4),
            str(w // 2), str(h // 3), '400')
        time.sleep(0.8)
    fail(f'"{pattern}" not found on screen')


def wait_for(cond, seconds, what):
    end = time.time() + seconds
    while time.time() < end:
        if cond():
            return
        time.sleep(1)
    fail(f'timed out after {seconds}s waiting for {what}')


def has_banner():
    # The banner is a native AdView: a short WebView along the bottom edge
    # (the consent form is a WebView too, but full height).
    _, h = size()
    for n in nodes():
        if 'WebView' not in n.get('class', ''):
            continue
        _, y1, _, y2 = map(int, re.findall(r'\d+', n.get('bounds')))
        if y2 > h * 0.8 and 0 < y2 - y1 < h * 0.15:
            return True
    return False


def answer_consent():
    """Answers the GDPR consent form if the device is in the EEA/UK."""
    end = time.time() + 60  # the form loads slowly on a busy emulator
    while time.time() < end:
        choice = find(r'^Do not consent$')
        if choice is not None:
            step('  consent form shown: choosing "Do not consent"')
            tap(choice)
            time.sleep(3)
            return
        if has_banner():
            return
        time.sleep(1)


def ad_free_saved():
    xml = adb('shell', 'run-as', PKG, 'cat',
              'shared_prefs/FlutterSharedPreferences.xml', check=False)
    return 'flutter.ads.ad_free_until' in xml


def close_ad():
    """Closes a full-screen ad with its close button. BACK is the fallback:
    a rewarded video can stall on BACK until the system reports an ANR."""
    for _ in range(3):
        if AD_ACTIVITY not in top_activity():
            return
        close = find(r'close|skip|dismiss')
        if close is not None:
            tap(close)
        else:
            adb('shell', 'input', 'keyevent', 'KEYCODE_BACK')
        time.sleep(3)
        wait = find(r'^Wait$')  # "isn't responding" dialog
        if wait is not None:
            tap(wait)
            time.sleep(2)


def main():
    global serial, out_dir
    p = argparse.ArgumentParser()
    p.add_argument('-s', dest='serial')
    p.add_argument('--out', default='build/ad_e2e')
    p.add_argument('--no-install', action='store_true')
    a = p.parse_args()
    serial = ['-s', a.serial] if a.serial else []
    out_dir = a.out
    os.makedirs(out_dir, exist_ok=True)

    if 'state=ACTIVE' in adb('shell', 'dumpsys', 'telecom', check=False):
        sys.exit('A call is active on the device; not touching it.')

    if not a.no_install:
        step('Installing the debug build')
        adb('install', '-r', APK)
    # A fresh device shows a one-time "Viewing full screen" tip over the
    # first full-screen ad, which swallows taps.
    adb('shell', 'settings', 'put', 'secure', 'immersive_mode_confirmations',
        'confirmed', check=False)
    step('Seeding preferences: second launch, 10 practices, English')
    adb('shell', 'am', 'force-stop', PKG)
    adb('shell', 'pm', 'clear', PKG)
    adb('shell', f"run-as {PKG} sh -c 'mkdir -p shared_prefs && "
        "cat > shared_prefs/FlutterSharedPreferences.xml'", stdin=PREFS)
    adb('shell', 'am', 'start', '-n', f'{PKG}/.MainActivity')
    wait_for(lambda: PKG in top_activity(), 20, 'the app to start')

    answer_consent()
    step('1/3 Banner on the home screen')
    wait_for(has_banner, 40, 'the banner ad')
    print(f'  ok, {shot("1-banner")}')

    step('2/3 Pop-up after 5 practices, on leaving the practice screen')
    tap(scroll_to(r'^Recommended for you'))  # opens a practice screen
    wait_for(lambda: find(r'I said it') is not None, 20,
             'the practice screen')
    for i in range(5):
        button = find(r'I said it')
        if button is None:
            fail('"I said it!" button not found')
        tap(button)
        time.sleep(2.5)  # the toast must not swallow the next tap
    time.sleep(6)  # the interstitial preloads after the first tap
    if AD_ACTIVITY in top_activity():
        fail('an ad opened while practising')
    adb('shell', 'input', 'keyevent', 'KEYCODE_BACK')
    wait_for(lambda: AD_ACTIVITY in top_activity(), 15, 'the pop-up ad')
    time.sleep(2)
    print(f'  ok, {shot("2-interstitial")}')
    close_ad()
    wait_for(lambda: PKG in top_activity() and AD_ACTIVITY not in
             top_activity(), 10, 'the pop-up to close')

    step('3/3 Rewarded video turns ads off')
    settings = find(r'^Settings$')
    if settings is None:  # still on the section list
        adb('shell', 'input', 'keyevent', 'KEYCODE_BACK')
        time.sleep(2)
        settings = find(r'^Settings$')
    if settings is None:
        fail('Settings button not found on home')
    tap(settings)
    time.sleep(2)
    tap(scroll_to(r'Go ad-free for 24 hours'))
    wait_for(lambda: AD_ACTIVITY in top_activity(), 30, 'the rewarded video')
    time.sleep(2)
    print(f'  video playing, {shot("3-rewarded")}')
    # Google's test video lets you close it once the reward is granted.
    wait_for(ad_free_saved, 60, 'the reward (ad-free time saved)')
    close_ad()
    wait_for(lambda: AD_ACTIVITY not in top_activity(), 15,
             'the video to close')
    time.sleep(1)
    if find(r'Ad-free until') is None:
        fail('Settings does not show "Ad-free until"')
    print(f'  ok, {shot("3-ad-free")}')
    adb('shell', 'input', 'keyevent', 'KEYCODE_BACK')  # to home
    time.sleep(3)
    if has_banner():
        fail('the banner still shows while ad-free')
    print(f'  banner gone, {shot("3-home-no-banner")}')

    print('PASS: banner, pop-up and rewarded video all work')


if __name__ == '__main__':
    main()
