import 'dart:io';

import 'package:path/path.dart';

String fixture(String name) => File('$_testDirectory/infrastructure/lunch_recipe/data_source/fixture/$name').readAsStringSync();

final _testDirectory = join(
  Directory.current.path,
  Directory.current.path.endsWith('test') ? '' : 'test',
);
