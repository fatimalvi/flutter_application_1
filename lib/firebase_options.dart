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
    apiKey: 'AIzaSyAdgSm55-CsAFEpNopbzVRMKPO8jvV-cG8',
    appId: '1:19599070051:web:cbe8c1fafc933bd024f956',
    messagingSenderId: '19599070051',
    projectId: 'projectlaiba-47641',
    authDomain: 'projectlaiba-47641.firebaseapp.com',
    databaseURL: 'https://projectlaiba-47641-default-rtdb.firebaseio.com',
    storageBucket: 'projectlaiba-47641.appspot.com',
    measurementId: 'G-QC7TB07476',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBOi3OvAviRfH5PtBE8gDdXOIpmYcYRaH8',
    appId: '1:19599070051:android:6c762c77332c194924f956',
    messagingSenderId: '19599070051',
    projectId: 'projectlaiba-47641',
    databaseURL: 'https://projectlaiba-47641-default-rtdb.firebaseio.com',
    storageBucket: 'projectlaiba-47641.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAs2Oop-s7MFnaL6EWm06hh3t6_8drBjO4',
    appId: '1:19599070051:ios:6b7ce1246a5a795f24f956',
    messagingSenderId: '19599070051',
    projectId: 'projectlaiba-47641',
    databaseURL: 'https://projectlaiba-47641-default-rtdb.firebaseio.com',
    storageBucket: 'projectlaiba-47641.appspot.com',
    iosClientId: '19599070051-oheek4l2pju2trchr3qrgc6f1hlmqm40.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAs2Oop-s7MFnaL6EWm06hh3t6_8drBjO4',
    appId: '1:19599070051:ios:6b7ce1246a5a795f24f956',
    messagingSenderId: '19599070051',
    projectId: 'projectlaiba-47641',
    databaseURL: 'https://projectlaiba-47641-default-rtdb.firebaseio.com',
    storageBucket: 'projectlaiba-47641.appspot.com',
    iosClientId: '19599070051-oheek4l2pju2trchr3qrgc6f1hlmqm40.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );
}
