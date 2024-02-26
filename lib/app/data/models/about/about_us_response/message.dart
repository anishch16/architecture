// import 'dart:convert';
//
// import 'package:equatable/equatable.dart';
//
// class Message extends Equatable {
//   final String? title;
//   final String? description;
//   final String? updatedBy;
//   final DateTime? updatedAt;
//
//   const Message({
//     this.title,
//     this.description,
//     this.updatedBy,
//     this.updatedAt,
//   });
//
//   factory Message.fromMap(Map<String, dynamic> data) => Message(
//         title: data['title'] as String?,
//         description: data['description'] as String?,
//         updatedBy: data['updated_by'] as String?,
//         updatedAt: data['updated_at'] == null
//             ? null
//             : DateTime.parse(data['updated_at'] as String),
//       );
//
//   Map<String, dynamic> toMap() => {
//         'title': title,
//         'description': description,
//         'updated_by': updatedBy,
//         'updated_at': updatedAt?.toIso8601String(),
//       };
//
//   /// `dart:convert`
//   ///
//   /// Parses the string and returns the resulting Json object as [Message].
//   factory Message.fromJson(String data) {
//     return Message.fromMap(json.decode(data) as Map<String, dynamic>);
//   }
//
//   /// `dart:convert`
//   ///
//   /// Converts [Message] to a JSON string.
//   String toJson() => json.encode(toMap());
//
//   Message copyWith({
//     String? title,
//     String? description,
//     String? updatedBy,
//     DateTime? updatedAt,
//   }) {
//     return Message(
//       title: title ?? this.title,
//       description: description ?? this.description,
//       updatedBy: updatedBy ?? this.updatedBy,
//       updatedAt: updatedAt ?? this.updatedAt,
//     );
//   }
//
//   @override
//   bool get stringify => true;
//
//   @override
//   List<Object?> get props => [title, description, updatedBy, updatedAt];
// }
