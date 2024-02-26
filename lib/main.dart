import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}





// import 'dart:io';
//
// import 'package:dishhome/app/core/utils/keys.dart';
// import 'package:dishhome/app/core/utils/snackbar_util.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:khalti_flutter/khalti_flutter.dart';
//
// import 'app/data/repository/auth_rep/auth_rep.dart';
// import 'app/data/services/push_notification_service.dart';
// import 'app/routes/app_pages.dart';
// import 'app/core/theme/app_theme.dart';
// import 'app/core/values/s_text_strings.dart';
// import 'firebase_options.dart';
//
// @pragma('vm:entry-point')
// Future<void> firebaseBackgroundMessagingHandler(RemoteMessage message) async {
//   if (message.notification == null) {
//     await NotificationServiceP().initializeLocalNotifications();
//     NotificationServiceP().showNotification(message);
//   }
// }
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   //Handshake error fix
//   ByteData data =
//   await PlatformAssetBundle().load('assets/ca/lets-encrypt-r3.pem');
//   SecurityContext.defaultContext
//       .setTrustedCertificatesBytes(data.buffer.asUint8List());
//
//   SystemChrome.setEnabledSystemUIMode(
//     SystemUiMode.manual,
//     overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top],
//   );
//   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//     statusBarColor: Get.theme.colorScheme.surface,
//     statusBarIconBrightness: Brightness.dark,
//     statusBarBrightness: Brightness.light,
//   ));
//
//   //init storage and size
//   await GetStorage.init();
//   await ScreenUtil.ensureScreenSize();
//   // Auth repository
//
//   Get.put(AuthRepository(), permanent: true);
//
//   /// firebase initialization
//
//   try {
//     await Firebase.initializeApp(
//       options: DefaultFirebaseOptions.currentPlatform,
//     );
//     await GetStorage.init();
//     final fcmToken = await FirebaseMessaging.instance.getToken();
//     await FirebaseMessaging.instance.setAutoInitEnabled(true);
//     await FirebaseMessaging.instance.subscribeToTopic("All");
//     GetStorage box = GetStorage();
//     box.write("token", fcmToken);
//   } catch (e) {
//     await Firebase.initializeApp();
//   }
//
//   FirebaseMessaging messaging = FirebaseMessaging.instance;
//
//   // ignore: unused_local_variable
//   NotificationSettings settings = await messaging.requestPermission(
//     alert: true,
//     announcement: false,
//     badge: true,
//     carPlay: false,
//     criticalAlert: false,
//     provisional: false,
//     sound: true,
//   );
//
//   NotificationServiceP().initializeLocalNotifications();
//   FirebaseMessaging.onBackgroundMessage(firebaseBackgroundMessagingHandler);
//
//   // Run the app
//   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
//         (_) async {
//       runApp(
//         const MyApp(),
//       );
//     },
//   );
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({
//     super.key,
//   });
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   late FirebaseMessaging _firebaseMessaging;
//   Future<void> configureMessaging() async {
//     String token_ = '';
//     try {
//       _firebaseMessaging.getToken().then((String? token) {
//         assert(token != null);
//         token_ = token!;
//         // print(token);
//         GetStorage box = GetStorage();
//         box.write("token", token_);
//       });
//
//       RemoteMessage? initialMessage =
//       await _firebaseMessaging.getInitialMessage();
//       if (initialMessage != null) {
//         NotificationServiceP().showNotification(initialMessage);
//       }
//
//       FirebaseMessaging.onMessage.listen((event) {
//         RemoteMessage message = RemoteMessage(data: {
//           'title': event.notification!.title,
//           'body': event.notification!.body,
//         });
//         NotificationServiceP().showNotification(message);
//
//         SSnackbarUtil.showSnackbar(
//             message.data['title'], message.data['body'], SnackbarType.info);
//       });
//     } catch (e) {
//       rethrow;
//     }
//   }
//
//   @override
//   void initState() {
//     _firebaseMessaging = FirebaseMessaging.instance;
//     configureMessaging();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var initialRoute = AppPages.INITIAL;
//
//     GetStorage box = GetStorage();
//     var isFirstTime = box.read(SConstKeys.isFirstTime) ?? true;
//     AuthRepository.instance.isAuthenticated.value =
//         box.read(SConstKeys.isAuthenticated) ?? false;
//     if (isFirstTime) {
//       box.write(SConstKeys.isFirstTime, false);
//       initialRoute = Routes.ONBOARDING;
//     } else {
//       if (AuthRepository.instance.isAuthenticated.value) {
//         initialRoute = Routes.HOME;
//       } else {
//         initialRoute = Routes.SIGNIN;
//       }
//     }
//
//     return KhaltiScope(
//       publicKey: SConstKeys.publicKey,
//       builder: (context, navigatorKey) {
//         return ScreenUtilInit(
//             designSize: const Size(360, 690),
//             minTextAdapt: true,
//             useInheritedMediaQuery: true,
//             splitScreenMode: true,
//             builder: (context, child) {
//               return GetMaterialApp(
//                 color: Colors.white,
//                 navigatorKey: navigatorKey,
//                 supportedLocales: const [
//                   Locale('en', 'US'),
//                   Locale('ne', 'NP'),
//                 ],
//                 localizationsDelegates: const [
//                   KhaltiLocalizations.delegate,
//                 ],
//                 debugShowCheckedModeBanner: false,
//                 theme: SAppTheme.lightTheme,
//                 darkTheme: SAppTheme.darkTheme,
//                 themeMode: ThemeMode.light,
//                 // themeMode: ThemeMode.system,
//                 title: STextString.appName,
//                 initialRoute: initialRoute,
//                 getPages: AppPages.routes,
//               );
//             });
//       },
//     );
//   }
// }
