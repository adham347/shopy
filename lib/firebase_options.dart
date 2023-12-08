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
    apiKey: 'AIzaSyCiPJSPZNY19gvUCzBT6TIOmxkamenyO6c',
    appId: '1:279975894996:web:0d5b3291b91f845b690041',
    messagingSenderId: '279975894996',
    projectId: 'shopy-f9053',
    authDomain: 'shopy-f9053.firebaseapp.com',
    storageBucket: 'shopy-f9053.appspot.com',
    measurementId: 'G-9VLKC7M1ZW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCtkYgGDaCFhrvyjvcYbRA6JlFApGfeoBw',
    appId: '1:279975894996:android:6792a67e8b255059690041',
    messagingSenderId: '279975894996',
    projectId: 'shopy-f9053',
    storageBucket: 'shopy-f9053.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA0O88tKo3I4C8Hk7eojPevuaaVgsqDA7I',
    appId: '1:279975894996:ios:cebabac203a2bfc7690041',
    messagingSenderId: '279975894996',
    projectId: 'shopy-f9053',
    storageBucket: 'shopy-f9053.appspot.com',
    iosBundleId: 'com.example.shopy',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA0O88tKo3I4C8Hk7eojPevuaaVgsqDA7I',
    appId: '1:279975894996:ios:5ec9f765239fb088690041',
    messagingSenderId: '279975894996',
    projectId: 'shopy-f9053',
    storageBucket: 'shopy-f9053.appspot.com',
    iosBundleId: 'com.example.shopy.RunnerTests',
  );
}
