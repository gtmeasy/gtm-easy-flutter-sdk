import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';

const clickIdProviders = <String>[
  'gclid',
  'fbclid',
  'fbc',
  'fbp',
  'ttclid',
  'msclkid',
  'twclid',
  'wbraid',
  'gbraid',
  'igshid',
];

const inboundClickProviders = <String>[
  'gclid',
  'fbclid',
  'ttclid',
  'msclkid',
  'twclid',
  'wbraid',
  'gbraid',
  'igshid',
];

const clickIdTtl = Duration(days: 90);

class ClickIdStore {
  ClickIdStore(this._prefs, {Random? random, DateTime Function()? now})
    : _random = random ?? Random(),
      _now = now ?? DateTime.now;

  final SharedPreferences _prefs;
  final Random _random;
  final DateTime Function() _now;

  static String _key(String provider) => 'gtmeasy.click.$provider';

  Future<void> record(String provider, String value, {DateTime? at}) async {
    final trimmed = value.trim();
    if (trimmed.isEmpty) return;
    final ts = (at ?? _now()).millisecondsSinceEpoch;
    await _prefs.setString(
      _key(provider),
      '{"value":${_jsonString(trimmed)},"ts":$ts}',
    );
  }

  Future<String?> current(String provider, {Duration ttl = clickIdTtl}) async {
    final raw = _prefs.getString(_key(provider));
    if (raw == null || raw.isEmpty) return null;
    final parsed = _parse(raw);
    if (parsed == null) return null;
    final age = _now().millisecondsSinceEpoch - parsed.$2;
    if (ttl != Duration.zero && age > ttl.inMilliseconds) return null;
    return parsed.$1;
  }

  Future<int> captureFromUri(Uri uri) async {
    var count = 0;
    final at = _now();
    for (final entry in uri.queryParameters.entries) {
      final lc = entry.key.toLowerCase();
      final value = entry.value;
      if (value.isEmpty) continue;
      if (lc == 'fbclid') {
        await record('fbclid', value, at: at);
        await ensureFbc(value, at: at);
        await ensureFbp(at: at);
        count++;
      } else if (inboundClickProviders.contains(lc) &&
          lc != 'fbc' &&
          lc != 'fbp') {
        await record(lc, value, at: at);
        count++;
      }
    }
    return count;
  }

  Future<String?> ensureFbc(String fbclid, {DateTime? at}) async {
    if (fbclid.isEmpty) return null;
    final when = at ?? _now();
    final fbc = 'fb.1.${when.millisecondsSinceEpoch}.$fbclid';
    await record('fbc', fbc, at: when);
    return fbc;
  }

  Future<String> ensureFbp({DateTime? at}) async {
    final existing = await current('fbp', ttl: const Duration(days: 3650));
    if (existing != null) return existing;
    final when = at ?? _now();
    final rand = 1000000000 + _random.nextInt(1 << 30);
    final value = 'fb.1.${when.millisecondsSinceEpoch}.$rand';
    await record('fbp', value, at: when);
    return value;
  }

  Future<Map<String, String>> snapshot() async {
    final out = <String, String>{};
    for (final provider in clickIdProviders) {
      final value = await current(provider);
      if (value != null) out[provider] = value;
    }
    return out;
  }

  static String _jsonString(String value) {
    return '"${value.replaceAll(r'\', r'\\').replaceAll('"', r'\"')}"';
  }

  static (String, int)? _parse(String raw) {
    final valueMatch = RegExp(
      r'"value"\s*:\s*"((?:\\.|[^"\\])*)"',
    ).firstMatch(raw);
    final tsMatch = RegExp(r'"ts"\s*:\s*(\d+)').firstMatch(raw);
    if (valueMatch == null || tsMatch == null) return null;
    final value = valueMatch
        .group(1)!
        .replaceAll(r'\"', '"')
        .replaceAll(r'\\', r'\');
    return (value, int.parse(tsMatch.group(1)!));
  }
}

/// Parses click ids from a URI without persistence. Used by unit tests.
int countClickIds(Uri uri) {
  var count = 0;
  for (final entry in uri.queryParameters.entries) {
    final lc = entry.key.toLowerCase();
    if (entry.value.isEmpty) continue;
    if (lc == 'fbclid' ||
        (inboundClickProviders.contains(lc) && lc != 'fbc' && lc != 'fbp')) {
      count++;
    }
  }
  return count;
}
