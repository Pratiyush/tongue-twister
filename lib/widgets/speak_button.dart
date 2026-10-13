import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/twister.dart';
import '../providers/speech_provider.dart';

/// Plays or stops a twister, and explains when the device lacks a voice.
Future<void> speakTwister(
  BuildContext context,
  WidgetRef ref,
  Twister twister, {
  int times = 1,
}) async {
  final controller = ref.read(speechControllerProvider.notifier);
  if (ref.read(speechControllerProvider).isSpeaking(twister.id)) {
    await controller.stop();
    return;
  }
  final result = await controller.speak(twister, times: times);
  if (result == SpeakResult.languageUnavailable && context.mounted) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            'No ${twister.section.ttsLocale} voice on this device. '
            'Add one in your system text-to-speech settings.',
          ),
        ),
      );
  }
}

class SpeakIconButton extends ConsumerWidget {
  const SpeakIconButton({super.key, required this.twister});

  final Twister twister;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final speaking = ref.watch(
      speechControllerProvider.select((s) => s.isSpeaking(twister.id)),
    );
    return IconButton(
      tooltip: speaking ? 'Stop' : 'Listen',
      icon: Icon(
        speaking ? Icons.stop_circle_outlined : Icons.volume_up_outlined,
      ),
      onPressed: () => speakTwister(context, ref, twister),
    );
  }
}
