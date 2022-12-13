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
    apiKey: 'AIzaSyD6fSV32hz5KroF24nmPmgrBymzgqpsjRo',
    appId: '1:869387165858:web:145ab7b658903a0f4037fb',
    messagingSenderId: '869387165858',
    projectId: 'saath-chalo-89d0a',
    authDomain: 'saath-chalo-89d0a.firebaseapp.com',
    storageBucket: 'saath-chalo-89d0a.appspot.com',
    measurementId: 'G-E8G2PEYPBL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA0JNZUWVUc9MAPMlQqfmfE8ZcERl2r4e4',
    appId: '1:869387165858:android:f51a3a04939fea8c4037fb',
    messagingSenderId: '869387165858',
    projectId: 'saath-chalo-89d0a',
    storageBucket: 'saath-chalo-89d0a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAPFACOQNkMg2Cpo-y42zZ-_DjfHNdNruU',
    appId: '1:869387165858:ios:54bf5fb438c4cded4037fb',
    messagingSenderId: '869387165858',
    projectId: 'saath-chalo-89d0a',
    storageBucket: 'saath-chalo-89d0a.appspot.com',
    iosClientId: '869387165858-cp8tk7rdj6d4rmu4chv8uqasd5k21toe.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterdemo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAPFACOQNkMg2Cpo-y42zZ-_DjfHNdNruU',
    appId: '1:869387165858:ios:54bf5fb438c4cded4037fb',
    messagingSenderId: '869387165858',
    projectId: 'saath-chalo-89d0a',
    storageBucket: 'saath-chalo-89d0a.appspot.com',
    iosClientId: '869387165858-cp8tk7rdj6d4rmu4chv8uqasd5k21toe.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterdemo',
  );
}