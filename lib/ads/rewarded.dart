import 'dart:async';
import 'dart:io' show Platform;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../providers/preferences_provider.dart';
import 'ads.dart';

/// Rewarded ad unit ids. The defaults are Google's public test units, so debug
/// builds never serve live ads. Release builds in CI pass the real ids with
/// `--dart-define-from-file=admob.json`.
const _rewardedAndroid = String.fromEnvironment(
  'ADMOB_REWARDED_ANDROID',
  defaultValue: 'ca-app-pub-3940256099942544/5224354917',
);
const _rewardedIos = String.fromEnvironment(
  'ADMOB_REWARDED_IOS',
  defaultValue: 'ca-app-pub-3940256099942544/1712485313',
);

const _adFreeUntilKey = 'ads.ad_free_until';

/// How long one watched video turns ads off.
const adFreeFor = Duration(hours: 1);

/// When the ad-free period the user earned ends, or null if none was earned.
/// Settings → "Go ad-free for 1 hour" plays one rewarded video for it.
class AdFreeNotifier extends Notifier<DateTime?> {
  @override
  DateTime? build() {
    final ms = ref.watch(sharedPreferencesProvider).getInt(_adFreeUntilKey);
    return ms == null ? null : DateTime.fromMillisecondsSinceEpoch(ms);
  }

  bool isActive([DateTime? now]) {
    final until = state;
    return until != null && (now ?? DateTime.now()).isBefore(until);
  }

  /// Starts (or extends) the ad-free period from [now].
  void grant([DateTime? now]) {
    final until = (now ?? DateTime.now()).add(adFreeFor);
    state = until;
    ref
        .read(sharedPreferencesProvider)
        .setInt(_adFreeUntilKey, until.millisecondsSinceEpoch);
  }

  /// Loads and plays a rewarded video. Completes with true once the user has
  /// earned the reward, false when no video was available or it was closed
  /// early.
  Future<bool> watchVideo() async {
    if (!(ref.read(adsReadyProvider).value ?? false)) return false;
    final loaded = Completer<RewardedAd?>();
    RewardedAd.load(
      adUnitId: Platform.isAndroid ? _rewardedAndroid : _rewardedIos,
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: loaded.complete,
        onAdFailedToLoad: (_) => loaded.complete(null),
      ),
    );
    final ad = await loaded.future;
    if (ad == null) return false;

    final done = Completer<bool>();
    var earned = false;
    ad.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad) {
        ad.dispose();
        done.complete(earned);
      },
      onAdFailedToShowFullScreenContent: (ad, _) {
        ad.dispose();
        done.complete(false);
      },
    );
    await ad.show(
      onUserEarnedReward: (_, _) {
        earned = true;
        grant();
      },
    );
    return done.future;
  }
}

final adFreeProvider = NotifierProvider<AdFreeNotifier, DateTime?>(
  AdFreeNotifier.new,
);
