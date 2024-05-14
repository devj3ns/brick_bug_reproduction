import 'package:brick_offline_first_with_rest/brick_offline_first_with_rest.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_test/brick/utils/uuid.dart';

@ConnectOfflineFirstWithRest()
class Project extends OfflineFirstWithRestModel {
  Project({
    required this.name,
    required this.id,
  });

  @Sqlite(index: true, unique: true)
  final UUID id;

  // @Sqlite(index: true, unique: true)
  // final String id;

  final String name;
}
