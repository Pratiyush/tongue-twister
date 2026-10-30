import 'dart:io' show Platform;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../providers/practice_provider.dart';
import '../providers/preferences_provider.dart';
import 'ads.dart';
import 'rewarded.dart';

/// Interstitial ad unit ids; Google's public test units by default. Release
/// builds pass real ids with `--dart-define=ADMOB_INTERSTITIAL_ANDROID=...`
/// and `ADMOB_INTERSTITIAL_IOS`.
const _interstitialAndroid = String.fromEnvironment(
  'ADMOB_INTERSTITIAL_ANDROID',
  defaultValue: 'ca-app-pub-3940256099942544/1033173712',
);
const _interstitialIos = String.fromEnvironment(
  'ADMOB_INTERSTITIAL_IOS',
  defaultValue: 'ca-app-pub-3940256099942544/4411468910',
);

/// Counts app launches; `main` bumps it once per start.
const launchesKey = 'app.launches';

/// When a full-screen ad may show. It only ever runs as the user leaves a
/// practice screen, never while a voice plays, on launch or in Settings.
abstract final class InterstitialPolicy {
  /// "I said it!" taps needed since the last ad.
  static const practisedBetween = 5;

  /// Minimum time between two ads.
  static const minGap = Duration(minutes: 3);

  /// No ads until the user has practised this many times in total.
  static const gracePractised = 10;

  static bool allows({
    required int launches,
    required int totalPractised,
    required int practisedSinceLast,
    required DateTime now,
    DateTime? lastShown,
  }) =>
      // Never in the first session: new users decide in minutes whether to
      // keep the app.
      launches > 1 &&
      totalPractised >= gracePractised &&
      practisedSinceLast >= practisedBetween &&
      (lastShown == null || now.difference(lastShown) >= minGap);
}

class InterstitialState {
  const InterstitialState({this.practisedSinceLast = 0, this.lastShown});

  final int practisedSinceLast;
  final DateTime? lastShown;
}

class InterstitialNotifier extends Notifier<InterstitialState> {
  InterstitialAd? _ad;
  bool _loading = false;

  @override
  InterstitialState build() {
    ref.onDispose(() => _ad?.dispose());
    return const InterstitialState();
  }

  bool get _ready => ref.read(adsReadyProvider).value ?? false;

  void _preload() {
    if (!_ready || _ad != null || _loading) return;
    _loading = true;
    InterstitialAd.load(
      adUnitId: Platform.isAndroid ? _interstitialAndroid : _interstitialIos,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _loading = false;
          _ad = ad;
        },
        onAdFailedToLoad: (_) => _loading = false,
      ),
    );
  }

  /// The user tapped "I said it!".
  void onPractised() {
    state = InterstitialState(
      practisedSinceLast: state.practisedSinceLast + 1,
      lastShown: state.lastShown,
    );
    _preload();
  }

  /// The user left a practice screen: show an ad if the policy allows and
  /// one is loaded.
  void onLeftPractice({DateTime? now}) {
    final at = now ?? DateTime.now();
    final allowed = InterstitialPolicy.allows(
      launches: ref.read(sharedPreferencesProvider).getInt(launchesKey) ?? 1,
      totalPractised: ref
          .read(practiceProvider)
          .values
          .fold(0, (sum, n) => sum + n),
      practisedSinceLast: state.practisedSinceLast,
      lastShown: state.lastShown,
      now: at,
    );
    final ad = _ad;
    if (!allowed ||
        ad == null ||
        ref.read(adFreeProvider.notifier).isActive(at)) {
      return;
    }
    _ad = null;
    ad.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad) {
        ad.dispose();
        _preload();
      },
      onAdFailedToShowFullScreenContent: (ad, _) => ad.dispose(),
    );
    ad.show();
    state = InterstitialState(lastShown: at);
  }
}

final interstitialProvider =
    NotifierProvider<InterstitialNotifier, InterstitialState>(
      InterstitialNotifier.new,
    );
