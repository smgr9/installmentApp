import 'package:flutter/material.dart';

class AppColor {
  static Color skipButton = const Color(0xff858597);

  //Scaffold
  static Color customScfoldColorLight01 = const Color(0xffF0F0F2);
  static Color customScfoldColorLight02 = const Color(0xffFFFFFF);
  static Color customScfoldColorDark = const Color(0xff1F1F39);
  // Auth continaer
  static Color customContinerLightColor = const Color(0xffFFFFFF);

  static Color customContinerDarkColor = const Color(0xff2F2F42);
  static Color customContinerDarkColor2 = Colors.grey;
  // primary Color for Text
  static Color primaryColor = const Color(0xff3D5CFF);
  static Color textwithoutContainer = const Color(0xff858597);
  static Color textprimaryLightColor = Colors.black;
  static Color textprimaryDarkColor = Colors.white;
  //lable form field
  static Color lableFormField = const Color(0xff858597);
  //button color
  static Color fristButtonColor = const Color(0xff3D5CFF);
  static Color secondButtonColor = const Color(0xffFFFFFF);
  static Color secondButtonColorDark = const Color(0xff858597);
  static Color secondButtonColorOutLine = const Color(0xff3D5CFF);
  //TextButton Color
  static Color fristTextButtonColor = const Color(0xffFFFFFF);
  static Color secondTextButtonColor = const Color(0xff3D5CFF);

  //homePage
  static Color popularColor = const Color(0xff0A0B02);
  static Color antipopularColor = const Color(0xffF0F0F2);

  // popular cate
  static Color popularCateColor = const Color(0xffA6A798);
  static Color popularbuttoneColor = const Color(0xffCED55B);
  static Color seeMoreColor = const Color(0xff8A8B7A);
  static Color workSpacesContainer = const Color(0xffF4F5F7);
}

//Scaffold
//primary color
Color scafoldBackGroundColor(BuildContext context) {
  final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
  Color color = isDarkMode
      ? AppColor.customContinerDarkColor
      : AppColor.customContinerLightColor;
  return color;
}

Color scafoldBackGroundColor2(BuildContext context) {
  final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
  Color color = isDarkMode
      ? AppColor.customContinerDarkColor
      : AppColor.customContinerDarkColor2;
  return color;
}

//primary color
Color primaryColor(BuildContext context) {
  final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
  Color color = isDarkMode
      ? AppColor.textprimaryDarkColor
      : AppColor.textprimaryLightColor;
  return color;
}

Color antiPrimaryColor(BuildContext context) {
  final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
  Color color = isDarkMode
      ? AppColor.textprimaryLightColor
      : AppColor.textprimaryDarkColor;
  return color;
}

//container
Color containerColor(BuildContext context) {
  final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
  Color color = isDarkMode
      ? AppColor.customContinerDarkColor
      : AppColor.customContinerLightColor;
  return color;
}

// button
Color secondButtonColor(BuildContext context) {
  final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
  Color color =
      isDarkMode ? AppColor.secondButtonColorDark : AppColor.secondButtonColor;
  return color;
}

//text Button
Color secondTextButtonColor(BuildContext context) {
  final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
  Color color = isDarkMode
      ? AppColor.fristTextButtonColor
      : AppColor.secondTextButtonColor;
  return color;
}

//
Color primaryAppColor(BuildContext context) {
  final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
  Color color = isDarkMode ? AppColor.antipopularColor : AppColor.popularColor;
  return color;
}
