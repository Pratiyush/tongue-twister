# Play Console: Apply for production (draft answers)

Fill in the `[brackets]` on day 14 with what actually happened. Play wants honest,
specific answers. Vague answers ("it went well") are the most common reason for a
rejected application. Keep each answer to a few sentences.

Closed test: track "Closed testing - Alpha", first build 51 (1.0.0), sent for review
8 Nov 2026. Testers: email list "Testers" (18 people).

## Part 1: About your closed test

**How easy was it to recruit testers for your app?**
> Easy. I invited 18 friends, family members and colleagues by email: a mix of
> native English, Hindi and German speakers plus people learning those languages,
> which matches the app's four sections. [N] opted in and [N] stayed for the full
> 14 days.

**Describe the engagement you received from testers during your closed test.**
> Testers opened the app [N] times a week on average, practised [N] twisters in
> total and used all four sections. The most used were [section] and [section].
> [N] testers tried the rewarded "ad-free for 1 hour" option, and [N] changed the
> app language from the default. (Source: Play Console statistics and direct
> feedback.)

**Provide a summary of the feedback that you received from testers. Include how you collected the feedback.**
> I collected feedback through the private feedback channel in Play (email to
> pratiyush1@gmail.com), a short message thread with testers, and in person.
> Main points: [e.g. "voices sound natural", "wanted slower playback",
> "a Hindi line was hard to read", "the banner covered the last list item on a
> small phone"]. [N] reports were bugs and [N] were feature requests.

## Part 2: About your app

**Who is the intended audience of your app?**
> Learners and fans of English, Hindi and German aged 13 and over: language
> students, people working on pronunciation or accent, speech and drama
> practice, and families who play tongue twisters for fun. The UI is available
> in 40 languages, so learners can use the app in their own language.

**Describe how your app provides value to users.**
> Each of the 100 traditional tongue twisters (British English, American
> English, Hindi, German) is read by a native-speaker voice, at three speeds.
> Users hear the correct rhythm and sounds, repeat them aloud, and track what
> they've practised and favourited. Hindi twisters include transliteration and
> translation, German ones a translation. Everything works offline, nothing is
> recorded, and no account is needed.

**How many installs do you expect your app to have in its first year?**
> [Pick the honest range in the form; for a new, unpromoted app "1,000 – 10,000"
> is realistic.]

## Part 3: Production readiness

**What changes did you make to your app based on what you learned during your closed test?**
> During the test I shipped [N] updates:
> - Screen-reader labels on all icon buttons (TalkBack), after checking with an
>   accessibility scan.
> - Voice clips re-encoded, cutting the app's audio size in half.
> - Store listing translated into the same 40 languages as the app.
> - [Changes from tester feedback, e.g. "fixed …", "added …".]

**How did you decide that your app is ready for production?**
> All tester-reported bugs are fixed and there were no crashes or ANRs in Android
> vitals during the test. The release build passed an automated end-to-end check
> of all three ad formats (banner, interstitial, rewarded), the widget and unit
> test suite passes in CI on every build, and every screen has been checked in
> all 40 UI languages at small phone width. [Add: crash-free rate from vitals.]

## Before submitting

- [ ] At least 12 testers opted in for 14 days in a row (Play Console shows the count).
- [ ] Replace every `[bracket]` with real numbers from Play Console → Statistics and Testers.
- [ ] Android vitals: no crash clusters open.
