// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

// class SqlDb {
//   static Database? _db;

//   Future<Database?> get db async {
//     if (_db == null) {
//       _db = await inialDb();
//       return _db;
//     } else {
//       return _db;
//     }
//   }

//   inialDb() async {
//     String databasepath = await getDatabasesPath();
//     String path = join(databasepath, 'gazer.db');
//     print("================");
//     print("path: $path");
//     print("================");
//     Database mydb = await openDatabase(path,
//         onCreate: _onCreate, version: 1, onUpgrade: _onupgrade);
//     return mydb;
//   }

//   _onupgrade(Database db, int oldVersion, int newVerison) {
//     print("onUpgrade");
//   }

//   _onCreate(Database db, int version) async {
//     await db.execute('''
// CREATE TABLE "customer" (
//   "customer_id" INTEGER  NOT NULL PRIMARY KEY  AUTOINCREMENT,
//   "customer_name" TEXT NOT NULL 


// );
// ''');
//     print('''create database 
//     and table''');
//   }

// //   _onCreate(Database db, int version) async {
// //     await db.execute('''
// // CREATE TABLE "customer" (
// //   "customer_id" INTEGER  NOT NULL PRIMARY KEY  AUTOINCREMENT,
// //   "customer_name" TEXT NOT NULL
// // );
// // ''');
// //     print('''create database
// //     and table''');
// // }

//   readData(String sql) async {
//     Database? mydb = await db;
//     List<Map<String, Object?>>? response = await mydb?.rawQuery(sql);
//     return response;
//   }

//   insertData(String sql) async {
//     Database? mydb = await db;
//     int? response = await mydb?.rawInsert(sql);
//     return response;
//   }

//   deletData(String sql) async {
//     Database? mydb = await db;
//     int? response = await mydb?.rawDelete(sql);
//     return response;
//   }

//   updataData(String sql) async {
//     Database? mydb = await db;
//     int? response = await mydb?.rawUpdate(sql);
//     return response;
//   }
// }
