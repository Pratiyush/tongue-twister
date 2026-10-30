import 'dart:async';
import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'rewarded.dart';

/// Banner ad unit ids. The defaults are Google's public test units, which
/// always serve test ads. Release builds pass real ids with
/// `--dart-define=ADMOB_BANNER_ANDROID=... --dart-define=ADMOB_BANNER_IOS=...`.
const _bannerAndroid = String.fromEnvironment(
  'ADMOB_BANNER_ANDROID',
  defaultValue: 'ca-app-pub-3940256099942544/9214589741',
);
const _bannerIos = String.fromEnvironment(
  'ADMOB_BANNER_IOS',
  defaultValue: 'ca-app-pub-3940256099942544/2435281174',
);

/// Ads run only on Android and iOS; widget tests run on the host and get none.
final adsSupportedProvider = Provider<bool>(
  (ref) => !kIsWeb && (Platform.isAndroid || Platform.isIOS),
);

/// Asks for consent (GDPR/UMP) and starts the Mobile Ads SDK.
///
/// Resolves to whether ads may be requested. Ads are muted and limited to
/// general-audience (G) content.
final adsReadyProvider = FutureProvider<bool>((ref) async {
  if (!ref.watch(adsSupportedProvider)) return false;

  final info = ConsentInformation.instance;
  final updated = Completer<void>();
  info.requestConsentInfoUpdate(
    ConsentRequestParameters(),
    () => updated.complete(),
    (_) => updated.complete(),
  );
  await updated.future;

  final shown = Completer<void>();
  ConsentForm.loadAndShowConsentFormIfRequired((_) => shown.complete());
  await shown.future;

  if (!await info.canRequestAds()) return false;

  await MobileAds.instance.initialize();
  await MobileAds.instance.updateRequestConfiguration(
    RequestConfiguration(maxAdContentRating: MaxAdContentRating.g),
  );
  // Never let an ad make noise over a tongue twister.
  await MobileAds.instance.setAppMuted(true);
  await MobileAds.instance.setAppVolume(0);
  return true;
});

/// Whether the user must be offered a way to change their consent choice
/// (Settings → Privacy choices).
final privacyOptionsRequiredProvider = FutureProvider<bool>((ref) async {
  if (!await ref.watch(adsReadyProvider.future)) return false;
  final status = await ConsentInformation.instance
      .getPrivacyOptionsRequirementStatus();
  return status == PrivacyOptionsRequirementStatus.required;
});

Future<void> showPrivacyOptions() {
  final done = Completer<void>();
  ConsentForm.showPrivacyOptionsForm((_) => done.complete());
  return done.future;
}

/// Anchored adaptive banner for the bottom of browse screens.
///
/// Sits above the system navigation bar. Never shown on the practice screen,
/// where the user listens and speaks.
class BannerAdBar extends ConsumerStatefulWidget {
  const BannerAdBar({super.key});

  @override
  ConsumerState<BannerAdBar> createState() => _BannerAdBarState();
}

class _BannerAdBarState extends ConsumerState<BannerAdBar> {
  BannerAd? _ad;
  bool _loaded = false;
  bool _requested = false;

  void _load() {
    _requested = true;
    _ad = BannerAd(
      adUnitId: Platform.isAndroid ? _bannerAndroid : _bannerIos,
      // The standard 320×50 banner: the large adaptive size took ~7% of the
      // screen on a 6.8" phone.
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          if (mounted) setState(() => _loaded = true);
        },
        onAdFailedToLoad: (ad, _) {
          ad.dispose();
          _ad = null;
        },
      ),
    )..load();
  }

  @override
  void dispose() {
    _ad?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ready = ref.watch(adsReadyProvider).value ?? false;
    ref.watch(adFreeProvider);
    final adFree = ref.read(adFreeProvider.notifier).isActive();
    if (ready && !adFree && !_requested) _load();
    final ad = adFree ? null : _ad;
    return SafeArea(
      top: false,
      child: ad != null && _loaded
          ? Center(
              heightFactor: 1,
              child: SizedBox(
                width: ad.size.width.toDouble(),
                height: ad.size.height.toDouble(),
                child: AdWidget(ad: ad),
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
