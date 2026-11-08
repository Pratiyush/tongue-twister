// Generates one ElevenLabs clip per twister into assets/audio/<id>.mp3.
//
// Usage:
//   dart run tool/generate_voices.dart                 generate missing/stale clips
//   dart run tool/generate_voices.dart --dry-run       list what would be generated
//   dart run tool/generate_voices.dart --find hi-IN    search the voice library
//   dart run tool/generate_voices.dart --use hi-IN <public_owner_id> <voice_id> <name>
//
// The API key comes from ELEVENLABS_API_KEY or a gitignored `.env` file.
// Voices and settings live in tool/voices.json. assets/audio/manifest.json
// records the exact text, voice and model of every clip, so editing a
// twister or swapping a voice regenerates only what changed.
import 'dart:convert';
import 'dart:io';

import 'package:tongue_twister/data/twister_repository.dart';
import 'package:tongue_twister/models/language_section.dart';

const _api = 'https://api.elevenlabs.io';
final _configFile = File('tool/voices.json');
final _manifestFile = File('assets/audio/manifest.json');

/// Library search filters per section: native language and accent.
const _search = {
  'en-GB': {'language': 'en', 'accent': 'british'},
  'en-US': {'language': 'en', 'accent': 'american'},
  'hi-IN': {'language': 'hi'},
  'de-DE': {'language': 'de'},
};

Future<void> main(List<String> args) async {
  final config = jsonDecode(_configFile.readAsStringSync()) as Map;
  final dryRun = args.contains('--dry-run');

  if (args.isNotEmpty && args.first == '--find') {
    return _find(_apiKey(), args[1]);
  }
  if (args.isNotEmpty && args.first == '--use') {
    return _use(_apiKey(), config, args[1], args[2], args[3], args[4]);
  }

  final manifest = _manifestFile.existsSync()
      ? (jsonDecode(_manifestFile.readAsStringSync()) as Map)
            .cast<String, dynamic>()
      : <String, dynamic>{};
  final model = config['model'] as String;
  final sections = (config['sections'] as Map).cast<String, dynamic>();
  final twisters = const TwisterRepository().all();

  final todo = [
    for (final t in twisters)
      if (_isStale(
        manifest[t.id],
        t.text,
        _voiceFor(sections, t.section),
        model,
      ))
        t,
  ];
  stdout.writeln('${twisters.length} twisters, ${todo.length} to generate.');

  final missingVoice = {
    for (final t in todo)
      if (_voiceFor(sections, t.section) == null) t.section.ttsLocale,
  };
  if (missingVoice.isNotEmpty) {
    stderr.writeln(
      'No voice set for ${missingVoice.join(', ')}. '
      'Run --find <locale>, then --use.',
    );
    if (!dryRun) exit(1);
  }
  if (dryRun) {
    for (final t in todo) {
      stdout.writeln('  ${t.id}: ${t.text}');
    }
    return;
  }

  final key = _apiKey();
  for (final t in todo) {
    final voice = _voiceFor(sections, t.section)!;
    final bytes = await _post(
      key,
      '/v1/text-to-speech/$voice?output_format=mp3_44100_64',
      {
        'text': t.text,
        'model_id': model,
        'voice_settings': config['voice_settings'],
      },
    );
    File('assets/audio/${t.id}.mp3').writeAsBytesSync(bytes);
    manifest[t.id] = {'text': t.text, 'voice': voice, 'model': model};
    _writeManifest(manifest);
    stdout.writeln('  ✓ ${t.id} (${bytes.length ~/ 1024} KB)');
  }

  // Drop clips whose twister no longer exists.
  final ids = {for (final t in twisters) t.id};
  for (final id in manifest.keys.toList()) {
    if (ids.contains(id)) continue;
    manifest.remove(id);
    final clip = File('assets/audio/$id.mp3');
    if (clip.existsSync()) clip.deleteSync();
    stdout.writeln('  ✗ removed orphan $id');
  }
  _writeManifest(manifest);
}

String? _voiceFor(Map<String, dynamic> sections, LanguageSection section) =>
    (sections[section.ttsLocale] as Map?)?['voice_id'] as String?;

bool _isStale(Object? entry, String text, String? voice, String model) {
  if (entry is! Map) return true;
  return entry['text'] != text ||
      entry['voice'] != voice ||
      entry['model'] != model;
}

void _writeManifest(Map<String, dynamic> manifest) {
  final sorted = Map.fromEntries(
    manifest.entries.toList()..sort((a, b) => a.key.compareTo(b.key)),
  );
  _manifestFile.writeAsStringSync(
    '${const JsonEncoder.withIndent('  ').convert(sorted)}\n',
  );
}

String _apiKey() {
  final env = Platform.environment['ELEVENLABS_API_KEY'];
  if (env != null && env.isNotEmpty) return env;
  final dotenv = File('.env');
  if (dotenv.existsSync()) {
    for (final line in dotenv.readAsLinesSync()) {
      if (line.startsWith('ELEVENLABS_API_KEY=')) {
        return line.substring('ELEVENLABS_API_KEY='.length).trim();
      }
    }
  }
  stderr.writeln('Set ELEVENLABS_API_KEY or add it to .env.');
  exit(1);
}

Future<void> _find(String key, String locale) async {
  final query = {
    ...?_search[locale],
    'page_size': '10',
    'sort': 'cloned_by_count',
  };
  final uri = Uri.parse('$_api/v1/shared-voices')
      .replace(queryParameters: query);
  final body = jsonDecode(utf8.decode(await _get(key, uri))) as Map;
  for (final v in (body['voices'] as List).cast<Map>()) {
    stdout.writeln(
      '${v['name']} | ${v['gender']} ${v['age']} ${v['accent']} | '
      'owner=${v['public_owner_id']} voice=${v['voice_id']}\n'
      '    ${v['description'] ?? ''}\n    preview: ${v['preview_url']}',
    );
  }
}

Future<void> _use(
  String key,
  Map config,
  String locale,
  String owner,
  String voiceId,
  String name,
) async {
  // Shared voices must be added to the account before the TTS API accepts them.
  final res = jsonDecode(
    utf8.decode(
      await _post(key, '/v1/voices/add/$owner/$voiceId', {'new_name': name}),
    ),
  ) as Map;
  (config['sections'] as Map)[locale] = {
    'voice_id': res['voice_id'],
    'name': name,
  };
  _configFile.writeAsStringSync(
    '${const JsonEncoder.withIndent('  ').convert(config)}\n',
  );
  stdout.writeln('$locale now uses $name (${res['voice_id']}).');
}

Future<List<int>> _get(String key, Uri uri) async {
  final client = HttpClient();
  try {
    final req = await client.getUrl(uri);
    req.headers.set('xi-api-key', key);
    return await _read(await req.close());
  } finally {
    client.close();
  }
}

Future<List<int>> _post(String key, String path, Object body) async {
  final client = HttpClient();
  try {
    final req = await client.postUrl(Uri.parse('$_api$path'));
    req.headers
      ..set('xi-api-key', key)
      ..contentType = ContentType.json;
    req.add(utf8.encode(jsonEncode(body)));
    return await _read(await req.close());
  } finally {
    client.close();
  }
}

Future<List<int>> _read(HttpClientResponse res) async {
  final bytes = await res.fold<List<int>>([], (a, b) => a..addAll(b));
  if (res.statusCode >= 300) {
    stderr.writeln('ElevenLabs ${res.statusCode}: ${utf8.decode(bytes)}');
    exit(1);
  }
  return bytes;
}
