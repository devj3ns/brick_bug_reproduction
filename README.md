# brick_test

This is a minimal reproduction of a bug in the Brick library: https://github.com/GetDutchie/brick/issues/379

To reproduce the bug:

1. run `dart run build_runner build` -> this will generate a `brick.g.dart`, a `*.migration.dart` and a `schema.g.dart` file -> the `project_adapter.g.dart` file is missing
2. replace `final UUID id;` with `final String id;` in the model file and run the build command again -> the `project_adapter.g.dart` file is generated