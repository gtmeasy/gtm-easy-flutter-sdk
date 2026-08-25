import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'storage.dart';

class FileGrowthStorage implements GrowthStorage {
  FileGrowthStorage(this._file);

  final File _file;
  Future<void> _lock = Future<void>.value();

  static Future<FileGrowthStorage> open(String app) async {
    final support = await getApplicationSupportDirectory();
    final safe = app.replaceAll(RegExp(r'[^A-Za-z0-9._-]+'), '_');
    final dir = Directory(p.join(support.path, 'gtmeasy', safe));
    await dir.create(recursive: true);
    return FileGrowthStorage(File(p.join(dir.path, 'queue.jsonl')));
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

  @override
  Future<void> enqueue(QueueItem item) {
    return _serialized(() async {
      await _file.parent.create(recursive: true);
      await _file.writeAsString(
        '${jsonEncode(item.toJson())}\n',
        mode: FileMode.append,
        flush: true,
      );
    });
  }

  @override
  Future<List<QueueItem>> peek({int? limit}) {
    return _serialized(() async => _readAll(limit: limit));
  }

  @override
  Future<void> removeIds(Iterable<String> ids) {
    final drop = ids.toSet();
    return _serialized(() async {
      final kept = (await _readAll()).where((i) => !drop.contains(i.id));
      await _rewrite(kept);
    });
  }

  @override
  Future<int> length() {
    return _serialized(() async => (await _readAll()).length);
  }

  @override
  Future<int> dropOldest(int count) {
    return _serialized(() async {
      final items = await _readAll();
      if (count <= 0 || items.isEmpty) return 0;
      final drop = count > items.length ? items.length : count;
      await _rewrite(items.skip(drop));
      return drop;
    });
  }

  Future<List<QueueItem>> _readAll({int? limit}) async {
    if (!await _file.exists()) return const [];
    final lines = await _file.readAsLines();
    final items = <QueueItem>[];
    for (final line in lines) {
      if (line.trim().isEmpty) continue;
      try {
        final decoded = jsonDecode(line);
        if (decoded is Map<String, dynamic>) {
          items.add(QueueItem.fromJson(Map<String, Object?>.from(decoded)));
        } else if (decoded is Map) {
          items.add(QueueItem.fromJson(Map<String, Object?>.from(decoded)));
        }
      } catch (_) {}
      if (limit != null && items.length >= limit) break;
    }
    return items;
  }

  Future<void> _rewrite(Iterable<QueueItem> items) async {
    final tmp = File('${_file.path}.tmp');
    final sink = tmp.openWrite();
    for (final item in items) {
      sink.writeln(jsonEncode(item.toJson()));
    }
    await sink.flush();
    await sink.close();
    if (await _file.exists()) {
      try {
        await _file.delete();
      } catch (_) {}
    }
    await tmp.rename(_file.path);
  }
}

Future<GrowthStorage> openDefaultStorage(String app) =>
    FileGrowthStorage.open(app);
