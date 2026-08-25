class QueueItem {
  const QueueItem({
    required this.id,
    required this.kind,
    required this.body,
  });

  final String id;
  final String kind;
  final Map<String, Object?> body;

  Map<String, Object?> toJson() => <String, Object?>{
        'id': id,
        'kind': kind,
        'body': body,
      };

  factory QueueItem.fromJson(Map<String, Object?> json) {
    final bodyRaw = json['body'];
    return QueueItem(
      id: json['id'] as String? ?? '',
      kind: json['kind'] as String? ?? 'event',
      body: bodyRaw is Map
          ? Map<String, Object?>.from(bodyRaw)
          : <String, Object?>{},
    );
  }
}

abstract class GrowthStorage {
  Future<void> enqueue(QueueItem item);

  Future<List<QueueItem>> peek({int? limit});

  Future<void> removeIds(Iterable<String> ids);

  Future<int> length();

  Future<int> dropOldest(int count);
}
