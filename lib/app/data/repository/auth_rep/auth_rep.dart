// import 'dart:async';
//
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:dishhome/app/data/models/about/payment_and_go_respoonse/payment_and_go_respoonse.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
//
// import '../../../../core/utils/snackbar_util.dart';
// import '../../../core/utils/keys.dart';
// import '../../../core/utils/snackbar_util.dart';
// import '../../../routes/app_pages.dart';
// import '../../models/general/api_result.dart';
// import '../../models/user/get_profile_response/get_profile_response.dart';
// import '../../models/user/user_balance_response/user_balance_response.dart';
// import '../../services/about_us/about_us_service.dart';
// import '../../services/user/user_service.dart';
//
// class AuthRepository extends GetxController {
//   static AuthRepository get instance => Get.find();
//   GetStorage box = GetStorage();
//
//   // late bool isFirstTime;
//
//   ConnectivityResult _connectionStatus = ConnectivityResult.none;
//   final Connectivity _connectivity = Connectivity();
//   late StreamSubscription<ConnectivityResult> _connectivitySubscription;
//
//   var isFingerPrintEnabled = false.obs;
//   var fingerprintMobile = ''.obs;
//   var fingerprintPassword = ''.obs;
//   var isConnected = true.obs;
//   var isAuthenticated = false.obs;
//   var isFirstTime = true.obs;
//
//   @override
//   void onInit() async {
//     super.onInit();
//
//     isAuthenticated.value = box.read(SConstKeys.isAuthenticated) ?? false;
//     isFirstTime.value = box.read(SConstKeys.isFirstTime) ?? true;
//
//     isFingerPrintEnabled.value =
//         box.read(SConstKeys.isFingerPrintEnabled) ?? false;
//     fingerprintMobile.value = box.read(SConstKeys.fingerprintMobile) ?? '';
//     fingerprintPassword.value = box.read(SConstKeys.fingerprintPassword) ?? '';
//   }
//
//   @override
//   void onClose() {
//     super.onClose();
//     _connectivitySubscription.cancel();
//   }
//
//   // Platform messages are asynchronous, so we initialize in an async method.
//   Future<void> initConnectivity() async {
//     late ConnectivityResult result;
//     // Platform messages may fail, so we use a try/catch PlatformException.
//     try {
//       result = await _connectivity.checkConnectivity();
//     } on PlatformException catch (_) {
//       // developer.log('Couldn\'t check connectivity status', error: e);
//       return;
//     }
//
//     // If the widget was removed from the tree while the asynchronous platform
//     // message was in flight, we want to discard the reply rather than calling
//     // setState to update our non-existent appearance.
//     // if (!mounted) {
//     //   return Future.value(null);
//     // }
//
//     return _updateConnectionStatus(result);
//   }
//
//   // SigninResponse userData = SigninResponse();
//
//   Future<void> _updateConnectionStatus(ConnectivityResult result) async {
//     _connectionStatus = result;
//     if (_connectionStatus == ConnectivityResult.none) {
//       // Logger().d('disconnected');
//       isConnected.value = false;
//       Get.toNamed(Routes.OFFLINE);
//
//       // Get.context!;
//       // Get.rawSnackbar(
//       //     title: 'Disconnected',
//       //     message: 'Internet Disconnected',
//       //     duration: const Duration(days: 1),
//       //     snackPosition: SnackPosition.TOP,
//       //     backgroundColor: Get.theme.colorScheme.tertiary,
//       //     isDismissible: false);
//     } else {
//       isConnected.value = true;
//       // Get.context!;
//       // // Logger().d('connected');
//       Get.back();
//       // Get.rawSnackbar(
//       //   title: 'Connected',
//       //   message: 'Internet Connected',
//       //   snackPosition: SnackPosition.TOP,
//       //   backgroundColor: Get.theme.colorScheme.secondary,
//       // );
//     }
//   }
//
//   @override
//   void onReady() {
//     FlutterNativeSplash.remove();
//     initConnectivity();
//     _connectivitySubscription =
//         _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
//     getPaymentAndGo();
//   }
//
//   changePassword({required String oldPassword, required String newPassword}) {}
//
//   Future logoutProcess({String? message}) async {
//     Future.delayed(const Duration(milliseconds: 500));
//     box.write(SConstKeys.isAuthenticated, false);
//     box.remove(SConstKeys.accessToken);
//     box.remove(SConstKeys.refreshToken);
//
//     if (message != null) {
//       SSnackbarUtil.showSnackbar('Logout', message, SnackbarType.info);
//     }
//     Get.offAllNamed(Routes.SIGNIN);
//   }
//
//   var userBalanceResult = const UserBalanceResponse().obs;
//   var userProfileResult = APIResult<GetProfileResponse>().obs;
//
//   Future<void> userProfileData() async {
//     try {
//       userProfileResult.value = APIResult.loading();
//
//       var response = await UserService.getUserProfile();
//
//       userProfileResult.value = APIResult.success(response);
//     } catch (e) {
//       userProfileResult.value = APIResult.error(e.toString());
//     }
//
//     if (userProfileResult.value.isSuccessful) {
//       if (AuthRepository.instance.userProfileResult.value.data?.phone !=
//           AuthRepository.instance.fingerprintMobile.value) {
//         AuthRepository.instance.isFingerPrintEnabled.value = false;
//       }
//     } else {
//       SnackbarUtil.showSnackbar(
//           'Error', '${userProfileResult.value.error}', SnackbarType.error);
//     }
//   }
//
//   var paymentAndGoResult = APIResult<PaymentAndGoRespoonse>().obs;
//
//   Future<void> getPaymentAndGo() async {
//     try {
//       paymentAndGoResult.value = APIResult.loading();
//
//       var response = await AboutUsService.getPaymentInfo();
//
//       paymentAndGoResult.value = APIResult.success(response);
//     } catch (e) {
//       paymentAndGoResult.value = APIResult.error(e.toString());
//     }
//
//     if (paymentAndGoResult.value.isSuccessful) {
//       ///Get.offAllNamed(Routes.HOME);
//       ///
//     } else {
//       SSnackbarUtil.showSnackbar(
//           'Error', '${paymentAndGoResult.value.error}', SnackbarType.error);
//     }
//   }
// }
