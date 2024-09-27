// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAfKfJ2k0p2nYHhkHstaVosqOlT6aQbhL4',
    appId: '1:265972813851:web:73f8389465a922dda7a8be',
    messagingSenderId: '265972813851',
    projectId: 'caragency-608be',
    authDomain: 'caragency-608be.firebaseapp.com',
    storageBucket: 'caragency-608be.appspot.com',
    measurementId: 'G-ZGH7NCP81E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCD8lUC6Yqq-daKsSzw4AgBxAyyTrYMZdU',
    appId: '1:265972813851:android:99ebd52c276e94d7a7a8be',
    messagingSenderId: '265972813851',
    projectId: 'caragency-608be',
    storageBucket: 'caragency-608be.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCKkApwzP9waOtEO0bNfpbI8pEwbjSNHUY',
    appId: '1:265972813851:ios:8ab527d62d534a12a7a8be',
    messagingSenderId: '265972813851',
    projectId: 'caragency-608be',
    storageBucket: 'caragency-608be.appspot.com',
    iosBundleId: 'com.example.carAgency',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCKkApwzP9waOtEO0bNfpbI8pEwbjSNHUY',
    appId: '1:265972813851:ios:8ab527d62d534a12a7a8be',
    messagingSenderId: '265972813851',
    projectId: 'caragency-608be',
    storageBucket: 'caragency-608be.appspot.com',
    iosBundleId: 'com.example.carAgency',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAfKfJ2k0p2nYHhkHstaVosqOlT6aQbhL4',
    appId: '1:265972813851:web:b78d43c06fc6c1c3a7a8be',
    messagingSenderId: '265972813851',
    projectId: 'caragency-608be',
    authDomain: 'caragency-608be.firebaseapp.com',
    storageBucket: 'caragency-608be.appspot.com',
    measurementId: 'G-C0SHKQP2MT',
  );
}
