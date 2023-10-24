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
    apiKey: 'AIzaSyC99Euydj5x3nQrmEFUfAK3HvlrkQbyxkQ',
    appId: '1:753596705359:web:b1a5797e6739d8ac74583a',
    messagingSenderId: '753596705359',
    projectId: 'xoxo-notes',
    authDomain: 'xoxo-notes.firebaseapp.com',
    storageBucket: 'xoxo-notes.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBCfdEtH3gJTkGChmQLxMplTqTfcZxjmaQ',
    appId: '1:753596705359:android:3f4075a1a506d63174583a',
    messagingSenderId: '753596705359',
    projectId: 'xoxo-notes',
    storageBucket: 'xoxo-notes.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBk4OKBCn2yulW09HfQyt8cY_48t2VpE0I',
    appId: '1:753596705359:ios:e29aef7bd91da8bd74583a',
    messagingSenderId: '753596705359',
    projectId: 'xoxo-notes',
    storageBucket: 'xoxo-notes.appspot.com',
    iosBundleId: 'com.xoba.mynotes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBk4OKBCn2yulW09HfQyt8cY_48t2VpE0I',
    appId: '1:753596705359:ios:db56fedb0d8a9d3874583a',
    messagingSenderId: '753596705359',
    projectId: 'xoxo-notes',
    storageBucket: 'xoxo-notes.appspot.com',
    iosBundleId: 'com.xoba.mynotes.RunnerTests',
  );
}
