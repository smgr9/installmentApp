// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `hi rhe`
  String get hi {
    return Intl.message(
      'hi rhe',
      name: 'hi',
      desc: '',
      args: [],
    );
  }

  /// `skip`
  String get skip_button {
    return Intl.message(
      'skip',
      name: 'skip_button',
      desc: '',
      args: [],
    );
  }

  /// `Numerous free\ntrial courses`
  String get onboadring_title1 {
    return Intl.message(
      'Numerous free\ntrial courses',
      name: 'onboadring_title1',
      desc: '',
      args: [],
    );
  }

  /// `Quick and easy\nlearning`
  String get onboadring_title2 {
    return Intl.message(
      'Quick and easy\nlearning',
      name: 'onboadring_title2',
      desc: '',
      args: [],
    );
  }

  /// `Create your own\nstudy plan`
  String get onboadring_title3 {
    return Intl.message(
      'Create your own\nstudy plan',
      name: 'onboadring_title3',
      desc: '',
      args: [],
    );
  }

  /// `Free courses for you to\nfind your way to learning`
  String get onboadring_subtitle_title1 {
    return Intl.message(
      'Free courses for you to\nfind your way to learning',
      name: 'onboadring_subtitle_title1',
      desc: '',
      args: [],
    );
  }

  /// `Easy and fast learning at\nany time to help you\nimprove various skills`
  String get onboadring_subtitle_title2 {
    return Intl.message(
      'Easy and fast learning at\nany time to help you\nimprove various skills',
      name: 'onboadring_subtitle_title2',
      desc: '',
      args: [],
    );
  }

  /// `Study according to the\nstudy plan, make study\nmore motivated`
  String get onboadring_subtitle_title3 {
    return Intl.message(
      'Study according to the\nstudy plan, make study\nmore motivated',
      name: 'onboadring_subtitle_title3',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get log_In {
    return Intl.message(
      'Log In',
      name: 'log_In',
      desc: '',
      args: [],
    );
  }

  /// `sign up`
  String get sign_up {
    return Intl.message(
      'sign up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get reset_password {
    return Intl.message(
      'Reset Password',
      name: 'reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Create account`
  String get create_account {
    return Intl.message(
      'Create account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Enter your details below & free sign up`
  String get enterYourDetails {
    return Intl.message(
      'Enter your details below & free sign up',
      name: 'enterYourDetails',
      desc: '',
      args: [],
    );
  }

  /// `Enter Email`
  String get enter_email {
    return Intl.message(
      'Enter Email',
      name: 'enter_email',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your Email`
  String get confirm_emil {
    return Intl.message(
      'Confirm your Email',
      name: 'confirm_emil',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Repeat Password`
  String get confirm_password {
    return Intl.message(
      'Repeat Password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message(
      'Reset',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `check`
  String get check {
    return Intl.message(
      'check',
      name: 'check',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account？`
  String get have_an_account {
    return Intl.message(
      'Already have an account？',
      name: 'have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account?`
  String get dont_have_an_account {
    return Intl.message(
      'Don’t have an account?',
      name: 'dont_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Forget password?`
  String get forget_password {
    return Intl.message(
      'Forget password?',
      name: 'forget_password',
      desc: '',
      args: [],
    );
  }

  /// `Or login with`
  String get Or_login_with {
    return Intl.message(
      'Or login with',
      name: 'Or_login_with',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Phone`
  String get continue_with_phone {
    return Intl.message(
      'Continue with Phone',
      name: 'continue_with_phone',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Phone Number`
  String get enter_Your_Phone_Number {
    return Intl.message(
      'Enter Your Phone Number',
      name: 'enter_Your_Phone_Number',
      desc: '',
      args: [],
    );
  }

  /// `continue`
  String get continuePhone1 {
    return Intl.message(
      'continue',
      name: 'continuePhone1',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Select Language:`
  String get select_Language {
    return Intl.message(
      'Select Language:',
      name: 'select_Language',
      desc: '',
      args: [],
    );
  }

  /// `Dark Theme`
  String get dark_Theme {
    return Intl.message(
      'Dark Theme',
      name: 'dark_Theme',
      desc: '',
      args: [],
    );
  }

  /// `Aliens Store`
  String get drawer_home {
    return Intl.message(
      'Aliens Store',
      name: 'drawer_home',
      desc: '',
      args: [],
    );
  }

  /// `log out`
  String get logout {
    return Intl.message(
      'log out',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Code is sent to`
  String get code_is_sent_to {
    return Intl.message(
      'Code is sent to',
      name: 'code_is_sent_to',
      desc: '',
      args: [],
    );
  }

  /// `Verify and Create Account`
  String get verify_and_Create_Account {
    return Intl.message(
      'Verify and Create Account',
      name: 'verify_and_Create_Account',
      desc: '',
      args: [],
    );
  }

  /// `التحقق من الاميل`
  String get verify_Email {
    return Intl.message(
      'التحقق من الاميل',
      name: 'verify_Email',
      desc: '',
      args: [],
    );
  }

  /// `Verify Phone`
  String get verify_Phone {
    return Intl.message(
      'Verify Phone',
      name: 'verify_Phone',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations, you have \n completed your registration!`
  String get congratulations_regester {
    return Intl.message(
      'Congratulations, you have \n completed your registration!',
      name: 'congratulations_regester',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations, you have \n Reset your password!`
  String get congratulations_password {
    return Intl.message(
      'Congratulations, you have \n Reset your password!',
      name: 'congratulations_password',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get Success {
    return Intl.message(
      'Success',
      name: 'Success',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account you have\n to agree with our them & condication.`
  String get them_condication {
    return Intl.message(
      'By creating an account you have\n to agree with our them & condication.',
      name: 'them_condication',
      desc: '',
      args: [],
    );
  }

  /// `can't be larger than`
  String get cant_be_larger_than {
    return Intl.message(
      'can\'t be larger than',
      name: 'cant_be_larger_than',
      desc: '',
      args: [],
    );
  }

  /// `can't be less than`
  String get cant_be_less_than {
    return Intl.message(
      'can\'t be less than',
      name: 'cant_be_less_than',
      desc: '',
      args: [],
    );
  }

  /// `can't be Empty`
  String get cant_be_Empty {
    return Intl.message(
      'can\'t be Empty',
      name: 'cant_be_Empty',
      desc: '',
      args: [],
    );
  }

  /// `not valid phone`
  String get not_valid_phone {
    return Intl.message(
      'not valid phone',
      name: 'not_valid_phone',
      desc: '',
      args: [],
    );
  }

  /// `not valid username`
  String get not_valid_username {
    return Intl.message(
      'not valid username',
      name: 'not_valid_username',
      desc: '',
      args: [],
    );
  }

  /// `not valid email`
  String get not_valid_email {
    return Intl.message(
      'not valid email',
      name: 'not_valid_email',
      desc: '',
      args: [],
    );
  }

  /// `not valid National ID`
  String get not_valid_National_id {
    return Intl.message(
      'not valid National ID',
      name: 'not_valid_National_id',
      desc: '',
      args: [],
    );
  }

  /// `Home Page`
  String get home_page {
    return Intl.message(
      'Home Page',
      name: 'home_page',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '' key

  /// `adbtor List`
  String get debtor_list {
    return Intl.message(
      'adbtor List',
      name: 'debtor_list',
      desc: '',
      args: [],
    );
  }

  /// `debtor id`
  String get debtor_id {
    return Intl.message(
      'debtor id',
      name: 'debtor_id',
      desc: '',
      args: [],
    );
  }

  /// `Date added`
  String get add_date {
    return Intl.message(
      'Date added',
      name: 'add_date',
      desc: '',
      args: [],
    );
  }

  /// `debtor name`
  String get debtor_name {
    return Intl.message(
      'debtor name',
      name: 'debtor_name',
      desc: '',
      args: [],
    );
  }

  /// `phone number`
  String get phone_number {
    return Intl.message(
      'phone number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `national id`
  String get national_id {
    return Intl.message(
      'national id',
      name: 'national_id',
      desc: '',
      args: [],
    );
  }

  /// `Save Data`
  String get save_data {
    return Intl.message(
      'Save Data',
      name: 'save_data',
      desc: '',
      args: [],
    );
  }

  /// `Add debtor`
  String get add_debtor {
    return Intl.message(
      'Add debtor',
      name: 'add_debtor',
      desc: '',
      args: [],
    );
  }

  /// `select your theme :`
  String get select_theme {
    return Intl.message(
      'select your theme :',
      name: 'select_theme',
      desc: '',
      args: [],
    );
  }

  /// `address`
  String get address {
    return Intl.message(
      'address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `add`
  String get add {
    return Intl.message(
      'add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `areej`
  String get areej {
    return Intl.message(
      'areej',
      name: 'areej',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
