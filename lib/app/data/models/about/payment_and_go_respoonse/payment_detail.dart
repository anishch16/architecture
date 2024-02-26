// import 'dart:convert';
//
// import 'package:equatable/equatable.dart';
//
// class PaymentDetail extends Equatable {
//   final String? name;
//   final bool? status;
//   final String? esewaClientId;
//   final String? esewaSecretKey;
//   final String? khaltiPublicKey;
//
//   const PaymentDetail({
//     this.name,
//     this.status,
//     this.esewaClientId,
//     this.esewaSecretKey,
//     this.khaltiPublicKey,
//   });
//
//   factory PaymentDetail.fromMap(Map<String, dynamic> data) => PaymentDetail(
//         name: data['name'] as String?,
//         status: data['status'] as bool?,
//         esewaClientId: data['esewa_client_id'] as String?,
//         esewaSecretKey: data['esewa_secret_key'] as String?,
//         khaltiPublicKey: data['khalti_public_key'] as String?,
//       );
//
//   Map<String, dynamic> toMap() => {
//         'name': name,
//         'status': status,
//         'esewa_client_id': esewaClientId,
//         'esewa_secret_key': esewaSecretKey,
//         'khalti_public_key': khaltiPublicKey,
//       };
//
//   /// `dart:convert`
//   ///
//   /// Parses the string and returns the resulting Json object as [PaymentDetail].
//   factory PaymentDetail.fromJson(String data) {
//     return PaymentDetail.fromMap(json.decode(data) as Map<String, dynamic>);
//   }
//
//   /// `dart:convert`
//   ///
//   /// Converts [PaymentDetail] to a JSON string.
//   String toJson() => json.encode(toMap());
//
//   PaymentDetail copyWith({
//     String? name,
//     bool? status,
//     String? esewaClientId,
//     String? esewaSecretKey,
//     String? khaltiPublicKey,
//   }) {
//     return PaymentDetail(
//       name: name ?? this.name,
//       status: status ?? this.status,
//       esewaClientId: esewaClientId ?? this.esewaClientId,
//       esewaSecretKey: esewaSecretKey ?? this.esewaSecretKey,
//       khaltiPublicKey: khaltiPublicKey ?? this.khaltiPublicKey,
//     );
//   }
//
//   @override
//   bool get stringify => true;
//
//   @override
//   List<Object?> get props {
//     return [
//       name,
//       status,
//       esewaClientId,
//       esewaSecretKey,
//       khaltiPublicKey,
//     ];
//   }
// }
