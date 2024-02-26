// import 'package:dishhome/app/core/utils/keys.dart';
// import 'package:dishhome/app/data/repository/auth_rep/auth_rep.dart';
// import 'package:dishhome/app/routes/app_pages.dart';
// import 'package:esewa_flutter_sdk/esewa_config.dart';
// import 'package:esewa_flutter_sdk/esewa_flutter_sdk.dart';
// import 'package:esewa_flutter_sdk/esewa_payment.dart';
// import 'package:esewa_flutter_sdk/esewa_payment_success_result.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:khalti_flutter/khalti_flutter.dart';
//
// import '../../data/services/payment/payment_service.dart';
//
// class PaymentUtils {
//   static String khaltiToken = "";
//
//   static void payWithEsewa(
//       ctx, String price, String orderId, String orderName) async {
//     // isDataLoading.value = false;
//
//     try {
//       EsewaFlutterSdk.initPayment(
//         esewaConfig: EsewaConfig(
//           environment: Environment.live,
//           clientId: SConstKeys.ESEWA_CLIENT_ID,
//           secretId: SConstKeys.ESEWA_SECRET_KEY,
//         ),
//         esewaPayment: EsewaPayment(
//           productId: "$orderId",
//           productName: "$orderName",
//           productPrice: price,
//           callbackUrl: '',
//         ),
//         onPaymentSuccess: (EsewaPaymentSuccessResult data) async {
//           debugPrint(":::SUCCESS::: => $data");
//           // verifyTransactionStatus(data.refId, data.totalAmount, data.productId, orderName, orderId);
//           var result = await PaymentService.verifyTransactionStatus(
//               refId: data.refId,
//               amount: data.totalAmount,
//               pId: data.productId,
//               orderId: orderId,
//               orderName: orderName);
//           if (result) {
//             Get.offNamedUntil(Routes.HOME, ModalRoute.withName(Routes.HOME));
//           } else {}
//         },
//         onPaymentFailure: (data) {
//           // isDataLoading.value = true;
//
//           debugPrint(":::FAILURE::: => $data");
//         },
//         onPaymentCancellation: (data) {
//           // isDataLoading.value = true;
//
//           debugPrint(":::CANCELLATION::: => $data");
//         },
//       );
//     } on Exception catch (e) {
//       debugPrint("EXCEPTION : ${e.toString()}");
//     }
//   }
//
//   static void payWithKhaltiInApp(
//       ctx, int totalPrice, String orderId, String orderName) async {
//     // isDataLoading.value = false;
//
//     KhaltiScope.of(ctx).pay(
//       config: PaymentConfig(
//         amount: 100 * totalPrice, //in paisa
//         productIdentity: "$orderId",
//         productName: '$orderName',
//         mobileReadOnly: false,
//       ),
//       preferences: [
//         PaymentPreference.khalti,
//       ],
//       onSuccess: onSuccess,
//       onFailure: onFailure,
//       onCancel: onCancel,
//     );
//   }
//
//   static Future<void> onSuccess(PaymentSuccessModel success) async {
//     khaltiToken = success.token;
//     int price = (success.amount / 100).toInt();
//     String orderId = success.productIdentity;
//     String orderName = success.productName;
//
//     // // amount = success.amount;
//     //print("khalti token:$khaltiToken");
//     // PaymentService.verifyKhaltiPayment(price.toString(), khaltiToken, orderId, "${AuthRepository.instance.userProfileResult.value.id}",orderName );
//     var result = await PaymentService.verifyKhaltiPayment(
//         token: khaltiToken,
//         amount: price.toString(),
//         userId: "${AuthRepository.instance.userProfileResult.value.data?.id}",
//         orderId: orderId,
//         orderName: orderName);
//     if (result) {
//       Get.offNamedUntil(Routes.HOME, ModalRoute.withName(Routes.HOME));
//     } else {}
//     // verifyPayment(khaltiToken, amount, trackerId, gateway);
//   }
//
//   static void onFailure(PaymentFailureModel failure) {
//     // isDataLoading.value = true;
//
//     debugPrint(
//       failure.toString(),
//     );
//   }
//
//   static void onCancel() {
//     // isDataLoading.value = true;
//
//     debugPrint('Cancelled');
//   }
// }
