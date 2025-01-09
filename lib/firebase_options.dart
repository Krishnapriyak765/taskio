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
    apiKey: 'AIzaSyBoHxerexCnEqXtmcC91wT823-EXQqFVqo',
    appId: '1:222933207291:web:e60ecb826add8a8886485e',
    messagingSenderId: '222933207291',
    projectId: 'appmatix-73b56',
    authDomain: 'appmatix-73b56.firebaseapp.com',
    storageBucket: 'appmatix-73b56.firebasestorage.app',
    measurementId: 'G-04X445F0TS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC6HS4pTLFED7l1o7Di9el2MYZsT7OgZTE',
    appId: '1:222933207291:android:e2b3e586dd87c4a086485e',
    messagingSenderId: '222933207291',
    projectId: 'appmatix-73b56',
    storageBucket: 'appmatix-73b56.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyADb7aeYnebdtGDqqUJVssJwPqenZ-nzvA',
    appId: '1:222933207291:ios:726b1e587113367e86485e',
    messagingSenderId: '222933207291',
    projectId: 'appmatix-73b56',
    storageBucket: 'appmatix-73b56.firebasestorage.app',
    iosBundleId: 'com.example.taskio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyADb7aeYnebdtGDqqUJVssJwPqenZ-nzvA',
    appId: '1:222933207291:ios:726b1e587113367e86485e',
    messagingSenderId: '222933207291',
    projectId: 'appmatix-73b56',
    storageBucket: 'appmatix-73b56.firebasestorage.app',
    iosBundleId: 'com.example.taskio',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBoHxerexCnEqXtmcC91wT823-EXQqFVqo',
    appId: '1:222933207291:web:eede7d49e08840e486485e',
    messagingSenderId: '222933207291',
    projectId: 'appmatix-73b56',
    authDomain: 'appmatix-73b56.firebaseapp.com',
    storageBucket: 'appmatix-73b56.firebasestorage.app',
    measurementId: 'G-73KG8Z9WLS',
  );
}