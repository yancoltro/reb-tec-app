import 'dart:io';

import 'package:path_provider/path_provider.dart';

class DirectoriesService {
  Future<void> create() async {
    Directory baseDir = await getApplicationDocumentsDirectory();
    print(baseDir.path);
  }

  void list() {}

  void remove() {}
}
