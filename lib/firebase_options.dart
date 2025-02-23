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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA439IeDS3lKx0qTZjgcB2Vim4fqxQv2vs',
    appId: '1:968269759927:web:6be264063f4f6550425432',
    messagingSenderId: '968269759927',
    projectId: 'counter-testing-app',
    authDomain: 'counter-testing-app.firebaseapp.com',
    storageBucket: 'counter-testing-app.firebasestorage.app',
    measurementId: 'G-9GFS2DN7X0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBMcX-HeL0OC5EF_TFcbGMW2EZPtN3ZUxE',
    appId: '1:968269759927:android:0d4e5423f8125b30425432',
    messagingSenderId: '968269759927',
    projectId: 'counter-testing-app',
    storageBucket: 'counter-testing-app.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA439IeDS3lKx0qTZjgcB2Vim4fqxQv2vs',
    appId: '1:968269759927:web:de40c5b70fb07373425432',
    messagingSenderId: '968269759927',
    projectId: 'counter-testing-app',
    authDomain: 'counter-testing-app.firebaseapp.com',
    storageBucket: 'counter-testing-app.firebasestorage.app',
    measurementId: 'G-NHDEDV5GKW',
  );
}
