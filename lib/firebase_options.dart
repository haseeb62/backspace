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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB8lwaHR43YPm2mOYbGZ79E8wg1MSq5A34',
    appId: '1:621094766507:web:6e5ccd0828af5b4daeb4ee',
    messagingSenderId: '621094766507',
    projectId: 'backspace-current',
    authDomain: 'backspace-current.firebaseapp.com',
    storageBucket: 'backspace-current.appspot.com',
    measurementId: 'G-5RQLLJP8XP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAJngtgHY37ZTQQ_EJ5SAD-3jMasHVrS2k',
    appId: '1:621094766507:android:661d0e10ca54e944aeb4ee',
    messagingSenderId: '621094766507',
    projectId: 'backspace-current',
    storageBucket: 'backspace-current.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAo1uTiGEHGCZmlH2hoi0WkQiWxnHluovs',
    appId: '1:621094766507:ios:68614af2cb3a86c7aeb4ee',
    messagingSenderId: '621094766507',
    projectId: 'backspace-current',
    storageBucket: 'backspace-current.appspot.com',
    iosClientId: '621094766507-7q9u7tke025luj9r88njv7h8i1pe5evh.apps.googleusercontent.com',
    iosBundleId: 'eom.example.backspace',
  );
}
