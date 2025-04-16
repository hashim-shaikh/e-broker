import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;

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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD4HXNc4IjpYlTUTlnvHaz1db0TfUPTvzk',
    appId: '1:295923717138:android:e03e5ec2515475d141b4cb',
    messagingSenderId: '295923717138',
    projectId: 'hash-ebroker-dc902',
    storageBucket: 'hash-ebroker-dc902.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQldS4ied5TL7g49JXolO9BHKEbdcG5ss',
    appId: '1:295923717138:ios:66db38eec1afc13841b4cb',
    messagingSenderId: '295923717138',
    projectId: 'hash-ebroker-dc902',
    storageBucket: 'hash-ebroker-dc902.firebasestorage.app',
    iosBundleId: 'com.ebroker.wrteam',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAlyHbLlGncy0zy1GLgsBb8qm47CBADLKc',
    appId: '1:295923717138:web:71b938286a61e71d41b4cb',
    messagingSenderId: '295923717138',
    projectId: 'hash-ebroker-dc902',
    authDomain: 'hash-ebroker-dc902.firebaseapp.com',
    storageBucket: 'hash-ebroker-dc902.firebasestorage.app',
    measurementId: 'G-TB2XNXL2YM',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAQldS4ied5TL7g49JXolO9BHKEbdcG5ss',
    appId: '1:295923717138:ios:66db38eec1afc13841b4cb',
    messagingSenderId: '295923717138',
    projectId: 'hash-ebroker-dc902',
    storageBucket: 'hash-ebroker-dc902.firebasestorage.app',
    iosBundleId: 'com.ebroker.wrteam',
  );

}