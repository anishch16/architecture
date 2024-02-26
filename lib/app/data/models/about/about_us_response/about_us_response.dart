// import 'dart:convert';
//
// import 'package:equatable/equatable.dart';
//
// import 'data.dart';
//
// class AboutUsResponse extends Equatable {
//   final bool? success;
//   final String? message;
//   final AboutUsData? data;
//
//   const AboutUsResponse({this.success, this.message, this.data});
//
//   factory AboutUsResponse.fromMap(Map<String, dynamic> data) {
//     return AboutUsResponse(
//       success: data['success'] as bool?,
//       message: data['message'] as String?,
//       data: data['data'] == null
//           ? null
//           : AboutUsData.fromMap(data['data'] as Map<String, dynamic>),
//     );
//   }
//
//   Map<String, dynamic> toMap() => {
//         'success': success,
//         'message': message,
//         'data': data?.toMap(),
//       };
//
//   /// `dart:convert`
//   ///
//   /// Parses the string and returns the resulting Json object as [AboutUsResponse].
//   factory AboutUsResponse.fromJson(String data) {
//     return AboutUsResponse.fromMap(json.decode(data) as Map<String, dynamic>);
//   }
//
//   /// `dart:convert`
//   ///
//   /// Converts [AboutUsResponse] to a JSON string.
//   String toJson() => json.encode(toMap());
//
//   AboutUsResponse copyWith({
//     bool? success,
//     String? message,
//     AboutUsData? data,
//   }) {
//     return AboutUsResponse(
//       success: success ?? this.success,
//       message: message ?? this.message,
//       data: data ?? this.data,
//     );
//   }
//
//   @override
//   bool get stringify => true;
//
//   @override
//   List<Object?> get props => [success, message, data];
// }
