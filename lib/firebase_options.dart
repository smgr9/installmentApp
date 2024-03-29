// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCMIQMHgL8EnyajJY3WUzPtLjWSQiP1eWo',
    appId: '1:18447431324:web:3112d33941489e707e9f59',
    messagingSenderId: '18447431324',
    projectId: 'installment-a2089',
    authDomain: 'installment-a2089.firebaseapp.com',
    storageBucket: 'installment-a2089.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA_SPi4Pi-TPFWKHYeLEahmTmFieUX7jJY',
    appId: '1:18447431324:android:eda1f3d243f7540c7e9f59',
    messagingSenderId: '18447431324',
    projectId: 'installment-a2089',
    storageBucket: 'installment-a2089.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAwt2p9gX00cn15T741LXfupu9MwIvfCI4',
    appId: '1:18447431324:ios:78ee168fff86d7277e9f59',
    messagingSenderId: '18447431324',
    projectId: 'installment-a2089',
    storageBucket: 'installment-a2089.appspot.com',
    iosBundleId: 'com.example.firstTemp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAwt2p9gX00cn15T741LXfupu9MwIvfCI4',
    appId: '1:18447431324:ios:adabcff186b246027e9f59',
    messagingSenderId: '18447431324',
    projectId: 'installment-a2089',
    storageBucket: 'installment-a2089.appspot.com',
    iosBundleId: 'com.example.firstTemp.RunnerTests',
  );
}

//web       1:18447431324:web:3112d33941489e707e9f59
// android   1:18447431324:android:eda1f3d243f7540c7e9f59
// ios       1:18447431324:ios:78ee168fff86d7277e9f59
// macos     1:18447431324:ios:adabcff186b246027e9f59