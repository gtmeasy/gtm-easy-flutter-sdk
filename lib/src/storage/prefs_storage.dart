import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'storage.dart';

class PrefsGrowthStorage implements GrowthStorage {
  PrefsGrowthStorage(this._prefs, this._key);

  final SharedPreferences _prefs;
  final String _key;
  Future<void> _lock = Future<void>.value();

  static Future<PrefsGrowthStorage> open(String app) async {
    final prefs = await SharedPreferences.getInstance();
    final safe = app.replaceAll(RegExp(r'[^A-Za-z0-9._-]+'), '_');
    return PrefsGrowthStorage(prefs, 'gtmeasy.queue.$safe');
  }

  Future<T> _serialized<T>(Future<T> Function() op) {
    final previous = _lock;
    final gate = Future<T>.sync(() async {
      await previous;
      return op();
    });
    _lock = gate.then((_) {}, onError: (_) {});
    return gate;
  }

  List<QueueItem> _load() {
    final raw = _prefs.getString(_key);
    if (raw == null || raw.isEmpty) return [];
    try {
      final decoded = jsonDecode(raw);
      if (decoded is! List) return [];
      return decoded
          .whereType<Map<Object?, Object?>>()
          .map((m) => QueueItem.fromJson(Map<String, Object?>.from(m)))
          .toList();
    } catch (_) {
      return [];
    }
  }

  Future<void> _save(List<QueueItem> items) {
    return _prefs.setString(
      _key,
      jsonEncode(items.map((i) => i.toJson()).toList()),
    );
  }

  @override
  Future<void> enqueue(QueueItem item) {
    return _serialized(() async {
      final items = _load()..add(item);
      await _save(items);
    });
  }

  @override
  Future<List<QueueItem>> peek({int? limit}) {
    return _serialized(() async {
      final items = _load();
      if (limit == null || limit >= items.length) return items;
      return items.sublist(0, limit);
    });
  }

  @override
  Future<void> removeIds(Iterable<String> ids) {
    final drop = ids.toSet();
    return _serialized(() async {
      await _save(_load().where((i) => !drop.contains(i.id)).toList());
    });
  }

  @override
  Future<int> length() => _serialized(() async => _load().length);

  @override
  Future<int> dropOldest(int count) {
    return _serialized(() async {
      final items = _load();
      if (count <= 0 || items.isEmpty) return 0;
      final drop = count > items.length ? items.length : count;
      await _save(items.sublist(drop));
      return drop;
    });
  }
}

Future<GrowthStorage> openDefaultStorage(String app) =>
    PrefsGrowthStorage.open(app);
