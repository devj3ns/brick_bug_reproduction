import 'package:brick_offline_first_with_rest/brick_offline_first_with_rest.dart';
import 'package:brick_sqlite/brick_sqlite.dart';

import '../utils/uuid.dart';

class Project extends OfflineFirstWithRestModel {
  Project({
    required this.name,
    required this.id,
  });

  @Sqlite(unique: true)
  final UUID id;

  final String name;
}
