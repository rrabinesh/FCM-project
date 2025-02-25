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
    apiKey: 'AIzaSyBP7juhwWpGcmnTbP3cWgMXftjUQXtmh-Q',
    appId: '1:932105070832:web:852f53b28baf6243f7ba35',
    messagingSenderId: '932105070832',
    projectId: 'fcm-project-d3fdb',
    authDomain: 'fcm-project-d3fdb.firebaseapp.com',
    storageBucket: 'fcm-project-d3fdb.firebasestorage.app',
    measurementId: 'G-LFGW3NGTEM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6qRapv9O57kcrrZWCTyk3o-u04_lHFYM',
    appId: '1:932105070832:android:287040010bf0d4ccf7ba35',
    messagingSenderId: '932105070832',
    projectId: 'fcm-project-d3fdb',
    storageBucket: 'fcm-project-d3fdb.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDyvgM1dnXTD43-VNkKClH_KOV4nXRcpS0',
    appId: '1:932105070832:ios:b14255f7cb8539ddf7ba35',
    messagingSenderId: '932105070832',
    projectId: 'fcm-project-d3fdb',
    storageBucket: 'fcm-project-d3fdb.firebasestorage.app',
    iosBundleId: 'com.example.fcmProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDyvgM1dnXTD43-VNkKClH_KOV4nXRcpS0',
    appId: '1:932105070832:ios:b14255f7cb8539ddf7ba35',
    messagingSenderId: '932105070832',
    projectId: 'fcm-project-d3fdb',
    storageBucket: 'fcm-project-d3fdb.firebasestorage.app',
    iosBundleId: 'com.example.fcmProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBP7juhwWpGcmnTbP3cWgMXftjUQXtmh-Q',
    appId: '1:932105070832:web:fe05120f5535d75ef7ba35',
    messagingSenderId: '932105070832',
    projectId: 'fcm-project-d3fdb',
    authDomain: 'fcm-project-d3fdb.firebaseapp.com',
    storageBucket: 'fcm-project-d3fdb.firebasestorage.app',
    measurementId: 'G-C9Y5Q6N0ZE',
  );
}
