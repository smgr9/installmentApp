import 'package:first_temp/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates = [
  S.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];

// Iterable<Locale> supportedLocales = [
//   const Locale('ar'),
//   const Locale('en'),
// ];
