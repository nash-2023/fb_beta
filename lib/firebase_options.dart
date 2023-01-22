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
    apiKey: 'AIzaSyCdSobw0ZhhPbNXKLR71smQ-_UTeWGW7DQ',
    appId: '1:426091284499:web:150883156dd446bc4397e6',
    messagingSenderId: '426091284499',
    projectId: 'fbbeta-9fee3',
    authDomain: 'fbbeta-9fee3.firebaseapp.com',
    storageBucket: 'fbbeta-9fee3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDCQPuDi2ediSEbbN8BmtC8wai4toNwje0',
    appId: '1:426091284499:android:2b58f00f1b7f6cc44397e6',
    messagingSenderId: '426091284499',
    projectId: 'fbbeta-9fee3',
    storageBucket: 'fbbeta-9fee3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7InJ-IpftzaYpA1Z6g1VJ_BJn_jojDzI',
    appId: '1:426091284499:ios:747a6bca24645aaa4397e6',
    messagingSenderId: '426091284499',
    projectId: 'fbbeta-9fee3',
    storageBucket: 'fbbeta-9fee3.appspot.com',
    iosClientId: '426091284499-0ce1rqvoqjgl1g1dadm3216aidlnca57.apps.googleusercontent.com',
    iosBundleId: 'com.example.fbBeta',
  );
}