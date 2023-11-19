import 'package:first_temp/test/presentation/styles/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum AppTheme {
  blueLight("Blue Light"),
  blueDark("Blue Dark"),
  redDark("Red Dark"),
  test("test1");

  const AppTheme(this.name);
  final String name;
}

final Map<AppTheme, ThemeData> appThemeData = {
  AppTheme.blueLight: ThemeData(
    appBarTheme:
        const AppBarTheme(backgroundColor: Colors.blue, centerTitle: true),
    brightness: Brightness.light,
    primaryColor: Colors.blue,
  ),
  AppTheme.blueDark: ThemeData(
    appBarTheme:
        AppBarTheme(backgroundColor: Colors.blue[700], centerTitle: true),
    brightness: Brightness.dark,
    primaryColor: Colors.blue[700],
  ),
  AppTheme.redDark: ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.red[700],
      centerTitle: true,
    ),
    brightness: Brightness.dark,
    primaryColor: Colors.red[700],
  ),
  AppTheme.test: ThemeData(
    scaffoldBackgroundColor: ColorManger.black,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ColorManger.black,
      ),
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 21,
      ),
      backgroundColor: ColorManger.black,
      elevation: 0,
      centerTitle: true,
    ),
    brightness: Brightness.dark,
    primaryColor: Colors.green[700],
  ),
};

// Map<AppTheme, ThemeData> appThemeData(BuildContext context) {
//   final Map<AppTheme, ThemeData> appThemeData = {
//     AppTheme.blueLight: ThemeData(
//       appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
//       brightness: Brightness.light,
//       primaryColor: Colors.blue,
//     ),
//     AppTheme.blueDark: ThemeData(
//       appBarTheme: AppBarTheme(backgroundColor: Colors.blue[700]),
//       brightness: Brightness.dark,
//       primaryColor: Colors.blue[700],
//     ),
//     AppTheme.redDark: ThemeData(
//       appBarTheme: AppBarTheme(backgroundColor: Colors.red[700]),
//       brightness: Brightness.dark,
//       primaryColor: Colors.red[700],
//     ),
//   };
//   return appThemeData;
// }
