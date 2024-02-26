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
    apiKey: 'AIzaSyC9y-7jbgCTQ2Deo3_fVAEJp8v2aohcoeo',
    appId: '1:367817433201:web:1056f93e09f5e00559fbd0',
    messagingSenderId: '367817433201',
    projectId: 'dishhome-e820f',
    authDomain: 'dishhome-e820f.firebaseapp.com',
    storageBucket: 'dishhome-e820f.appspot.com',
    measurementId: 'G-ENV0B6QXJR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBt4skOWI27R4SgRKOhj2f0ISoVMRHDCnk',
    appId: '1:367817433201:android:58050368e8ac3db559fbd0',
    messagingSenderId: '367817433201',
    projectId: 'dishhome-e820f',
    storageBucket: 'dishhome-e820f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCO2JfoGvptxaRiyLWnTpIfXfTp2wRychM',
    appId: '1:367817433201:ios:2652967558ffaba559fbd0',
    messagingSenderId: '367817433201',
    projectId: 'dishhome-e820f',
    storageBucket: 'dishhome-e820f.appspot.com',
    iosBundleId: 'com.ayata.dishhome.dishhome',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCO2JfoGvptxaRiyLWnTpIfXfTp2wRychM',
    appId: '1:367817433201:ios:46a78d8a93c4d99859fbd0',
    messagingSenderId: '367817433201',
    projectId: 'dishhome-e820f',
    storageBucket: 'dishhome-e820f.appspot.com',
    iosBundleId: 'com.ayata.dishhome.dishhome.RunnerTests',
  );
}