// import 'dart:convert';
//
// import 'package:equatable/equatable.dart';
//
// class Value extends Equatable {
//   final String? id;
//   final String? title;
//   final String? description;
//   final String? image;
//   final DateTime? updatedAt;
//   final String? updatedBy;
//   final String? createdBy;
//   final DateTime? createdAt;
//
//   const Value({
//     this.id,
//     this.title,
//     this.description,
//     this.image,
//     this.updatedAt,
//     this.updatedBy,
//     this.createdBy,
//     this.createdAt,
//   });
//
//   factory Value.fromMap(Map<String, dynamic> data) => Value(
//         id: data['_id'] as String?,
//         title: data['title'] as String?,
//         description: data['description'] as String?,
//         image: data['image'] as String?,
//         updatedAt: data['updated_at'] == null
//             ? null
//             : DateTime.parse(data['updated_at'] as String),
//         updatedBy: data['updated_by'] as String?,
//         createdBy: data['created_by'] as String?,
//         createdAt: data['created_at'] == null
//             ? null
//             : DateTime.parse(data['created_at'] as String),
//       );
//
//   Map<String, dynamic> toMap() => {
//         '_id': id,
//         'title': title,
//         'description': description,
//         'image': image,
//         'updated_at': updatedAt?.toIso8601String(),
//         'updated_by': updatedBy,
//         'created_by': createdBy,
//         'created_at': createdAt?.toIso8601String(),
//       };
//
//   /// `dart:convert`
//   ///
//   /// Parses the string and returns the resulting Json object as [Value].
//   factory Value.fromJson(String data) {
//     return Value.fromMap(json.decode(data) as Map<String, dynamic>);
//   }
//
//   /// `dart:convert`
//   ///
//   /// Converts [Value] to a JSON string.
//   String toJson() => json.encode(toMap());
//
//   Value copyWith({
//     String? id,
//     String? title,
//     String? description,
//     String? image,
//     DateTime? updatedAt,
//     String? updatedBy,
//     String? createdBy,
//     DateTime? createdAt,
//   }) {
//     return Value(
//       id: id ?? this.id,
//       title: title ?? this.title,
//       description: description ?? this.description,
//       image: image ?? this.image,
//       updatedAt: updatedAt ?? this.updatedAt,
//       updatedBy: updatedBy ?? this.updatedBy,
//       createdBy: createdBy ?? this.createdBy,
//       createdAt: createdAt ?? this.createdAt,
//     );
//   }
//
//   @override
//   bool get stringify => true;
//
//   @override
//   List<Object?> get props {
//     return [
//       id,
//       title,
//       description,
//       image,
//       updatedAt,
//       updatedBy,
//       createdBy,
//       createdAt,
//     ];
//   }
// }
