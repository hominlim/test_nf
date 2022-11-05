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
    apiKey: 'AIzaSyBbdPfmLikIZ5NhobpqF6fFcaZ57Egj2bE',
    appId: '1:492529007527:web:26428fb8b573dad8039482',
    messagingSenderId: '492529007527',
    projectId: 'test-nf-4188f',
    authDomain: 'test-nf-4188f.firebaseapp.com',
    storageBucket: 'test-nf-4188f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA7miV60kcyJUIK-bI0XWZRWW1Gx8WSTxw',
    appId: '1:492529007527:android:f1447767a3ecfa2d039482',
    messagingSenderId: '492529007527',
    projectId: 'test-nf-4188f',
    storageBucket: 'test-nf-4188f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAhbV_mwAysqBMFx_5u5W6jI5PC_Nx6Ly0',
    appId: '1:492529007527:ios:efc7f805f7be835d039482',
    messagingSenderId: '492529007527',
    projectId: 'test-nf-4188f',
    storageBucket: 'test-nf-4188f.appspot.com',
    iosClientId: '492529007527-n6o4clg5n1193micp6pe393jt9ca71ic.apps.googleusercontent.com',
    iosBundleId: 'com.example.testNf',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAhbV_mwAysqBMFx_5u5W6jI5PC_Nx6Ly0',
    appId: '1:492529007527:ios:efc7f805f7be835d039482',
    messagingSenderId: '492529007527',
    projectId: 'test-nf-4188f',
    storageBucket: 'test-nf-4188f.appspot.com',
    iosClientId: '492529007527-n6o4clg5n1193micp6pe393jt9ca71ic.apps.googleusercontent.com',
    iosBundleId: 'com.example.testNf',
  );
}