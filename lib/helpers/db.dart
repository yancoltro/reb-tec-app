import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DB {
  static final DB _singleton = DB._internal();
  Database? _database;

  DB._internal();
  factory DB() => _singleton;

  final int version = 1;
  Database? db;

  Future<Database?> get database async {
    if (_database == null) {
      db = await openDatabase(join(await getDatabasesPath(), 'readings.db'),
          onCreate: (database, version) {/**TODO**/}, version: version);

      return db;
    }
    return _database;
  }
}
