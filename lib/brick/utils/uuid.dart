import 'package:brick_offline_first/brick_offline_first.dart';

class UUID extends OfflineFirstSerdes<String, String> {
  final String value;

  UUID(this.value);

  factory UUID.fromRest(String? data) {
    if (data == null || data.isEmpty) throw ArgumentError.notNull('UUID');

    return UUID(data);
  }

  factory UUID.fromSqlite(String data) => UUID.fromRest(data);

  @override
  toRest() => value;

  @override
  toSqlite() => value;
}
