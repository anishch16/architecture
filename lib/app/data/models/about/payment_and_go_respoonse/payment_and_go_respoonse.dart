// import 'dart:convert';
//
// import 'package:equatable/equatable.dart';
//
// import 'payment_detail.dart';
//
// class PaymentAndGoRespoonse extends Equatable {
//   final List<PaymentDetail>? paymentDetails;
//   final String? googlePlayGo;
//   final String? appStoreGo;
//
//   const PaymentAndGoRespoonse({
//     this.paymentDetails,
//     this.googlePlayGo,
//     this.appStoreGo,
//   });
//
//   factory PaymentAndGoRespoonse.fromMap(Map<String, dynamic> data) {
//     return PaymentAndGoRespoonse(
//       paymentDetails: (data['paymentDetails'] as List<dynamic>?)
//           ?.map((e) => PaymentDetail.fromMap(e as Map<String, dynamic>))
//           .toList(),
//       googlePlayGo: data['google_play_go'] as String?,
//       appStoreGo: data['app_store_go'] as String?,
//     );
//   }
//
//   Map<String, dynamic> toMap() => {
//         'paymentDetails': paymentDetails?.map((e) => e.toMap()).toList(),
//         'google_play_go': googlePlayGo,
//         'app_store_go': appStoreGo,
//       };
//
//   /// `dart:convert`
//   ///
//   /// Parses the string and returns the resulting Json object as [PaymentAndGoRespoonse].
//   factory PaymentAndGoRespoonse.fromJson(String data) {
//     return PaymentAndGoRespoonse.fromMap(
//         json.decode(data) as Map<String, dynamic>);
//   }
//
//   /// `dart:convert`
//   ///
//   /// Converts [PaymentAndGoRespoonse] to a JSON string.
//   String toJson() => json.encode(toMap());
//
//   PaymentAndGoRespoonse copyWith({
//     List<PaymentDetail>? paymentDetails,
//     String? googlePlayGo,
//     String? appStoreGo,
//   }) {
//     return PaymentAndGoRespoonse(
//       paymentDetails: paymentDetails ?? this.paymentDetails,
//       googlePlayGo: googlePlayGo ?? this.googlePlayGo,
//       appStoreGo: appStoreGo ?? this.appStoreGo,
//     );
//   }
//
//   @override
//   bool get stringify => true;
//
//   @override
//   List<Object?> get props => [paymentDetails, googlePlayGo, appStoreGo];
// }
