import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class AppHasmatch {
  static bool hasMatch(String? value, String pattern) {
    return (value == null) ? false : RegExp(pattern).hasMatch(value);
  }

  static bool isUsername(String s) =>
      hasMatch(s, r'^[a-zA-Z0-9][a-zA-Z0-9_.]+[a-zA-Z0-9]$');

  /// Checks if string is email.
  static bool isEmail(String s) => hasMatch(s,
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  static bool isPhoneNumber(String s) {
    if (s.length > 16 || s.length < 9) return false;
    return hasMatch(s, r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$');
  }

  static bool isNationalID(String s) {
    if (s.length != 14) return false; // تحقق من طول السلسلة

    // استخدام تعبير منتظم للتحقق من تنسيق الرقم القومي المصري
    return hasMatch(s,
        r'^(2|3)[0-9][1-9][0-1][1-9][0-3][1-9](01|02|03|04|11|12|13|14|15|16|17|18|19|21|22|23|24|25|26|27|28|29|31|32|33|34|35|88)\d\d\d\d\d$');
  }

  static bool isArabicUsername(String s) =>
      hasMatch(s, r'^[a-zA-Z0-9\u0600-\u06FF]+(\s[a-zA-Z0-9\u0600-\u06FF]+)*$');
}

class AppValidation {
  static String? validateInput({
    required String value,
    required int min,
    required int max,
    required AppValidationType type,
    required BuildContext context,
  }) {
    if (value.isEmpty) {
      return S.of(context).cant_be_Empty;
    }

    if (value.length < min) {
      return "${S.of(context).cant_be_less_than} $min";
    }

    if (value.length > max) {
      return "${S.of(context).cant_be_larger_than} $max";
    }

    if (type == AppValidationType.username) {
      if (!AppHasmatch.isArabicUsername(value)) {
        return S.of(context).not_valid_username;
      }
    }

    if (type == AppValidationType.phone) {
      if (!AppHasmatch.isPhoneNumber(value)) {
        return S.of(context).not_valid_phone;
      }
    }

    // المزيد من التحققات للأنواع الأخرى إذا كان ذلك ضروريًا

    return null; // إذا كانت جميع التحققات تمر بنجاح
  }
}

enum AppValidationType {
  username,
  email,
  phone,
  nationalID,
}

// بقية الكود تبدو صحيحة، ولكن أحتفظ بالتحقق من كل الأمور


// class AppValidtion {
//   static validInput({
//     required String value,
//     required int min,
//     required int max,
//     required AppValidtionType type,
//     required BuildContext context,
//   }) {
//     if (value.isEmpty) {
//       return S.of(context).cant_be_Empty;
//       // return "can't be Empty";
//     }
//     if (value.length < min) {
//       return "${S.of(context).cant_be_less_than} $min";

//       // return "can't be less than $min";
//     }

//     if (value.length > max) {
//       return "${S.of(context).cant_be_larger_than} $max";
//       // return "can't be larger than $max";
//     }
//     if (type == AppValidtionType.username) {
//       if (!AppHasmatch.isUsername(value)) {
//         return S.of(context).not_valid_username;
//         // return "not valid username";
//       }
//     }
//     if (type == AppValidtionType.email) {
//       if (!AppHasmatch.isEmail(value)) {
//         return S.of(context).not_valid_email;
//         // return "not valid email";
//       }
//     }

//     if (type == AppValidtionType.phone) {
//       if (!AppHasmatch.isPhoneNumber(value)) {
//         return S.of(context).not_valid_phone;
//         // return "not valid phone";
//       }
//     }
//     if (type == AppValidtionType.nationalID) {
//       if (!AppHasmatch.isNationalID(value)) {
//         return S.of(context).not_valid_National_id;
//         // return "not valid phone";
//       }
//     }
//   }
// }

// enum AppValidtionType {
//   username,
//   email,
//   phone,
//   nationalID,
// }
