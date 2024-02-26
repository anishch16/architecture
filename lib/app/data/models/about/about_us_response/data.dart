// import 'dart:convert';
//
// import 'package:equatable/equatable.dart';
//
// import 'message.dart';
// import 'mission.dart';
// import 'numbers.dart';
// import 'value.dart';
//
// class AboutUsData extends Equatable {
//   final Numbers? numbers;
//   final Mission? mission;
//   final Message? message;
//   final String? id;
//   final num? v;
//   final DateTime? createdAt;
//   final DateTime? updatedAt;
//   final List<Value>? values;
//   final String? description1;
//   final String? description2;
//   final String? headerImage;
//   final String? image;
//   final String? valuesImage;
//   final DateTime? updatedAtB;
//   final String? updatedBy;
//
//   const AboutUsData({
//     this.numbers,
//     this.mission,
//     this.message,
//     this.id,
//     this.v,
//     this.createdAt,
//     this.updatedAt,
//     this.values,
//     this.description1,
//     this.description2,
//     this.headerImage,
//     this.image,
//     this.valuesImage,
//     this.updatedAtB,
//     this.updatedBy,
//   });
//
//   factory AboutUsData.fromMap(Map<String, dynamic> data) => AboutUsData(
//         numbers: data['numbers'] == null
//             ? null
//             : Numbers.fromMap(data['numbers'] as Map<String, dynamic>),
//         mission: data['mission'] == null
//             ? null
//             : Mission.fromMap(data['mission'] as Map<String, dynamic>),
//         message: data['message'] == null
//             ? null
//             : Message.fromMap(data['message'] as Map<String, dynamic>),
//         id: data['_id'] as String?,
//         v: data['__v'] as num?,
//         createdAt: data['created_at'] == null
//             ? null
//             : DateTime.parse(data['created_at'] as String),
//         updatedAt: data['updated_at'] == null
//             ? null
//             : DateTime.parse(data['updated_at'] as String),
//         values: (data['values'] as List<dynamic>?)
//             ?.map((e) => Value.fromMap(e as Map<String, dynamic>))
//             .toList(),
//         description1: data['description_1'] as String?,
//         description2: data['description_2'] as String?,
//         headerImage: data['header_image'] as String?,
//         image: data['image'] as String?,
//         valuesImage: data['values_image'] as String?,
//         updatedAtB: data['updatedAt'] == null
//             ? null
//             : DateTime.parse(data['updatedAt'] as String),
//         updatedBy: data['updated_by'] as String?,
//       );
//
//   Map<String, dynamic> toMap() => {
//         'numbers': numbers?.toMap(),
//         'mission': mission?.toMap(),
//         'message': message?.toMap(),
//         '_id': id,
//         '__v': v,
//         'created_at': createdAt?.toIso8601String(),
//         'updated_at': updatedAt?.toIso8601String(),
//         'values': values?.map((e) => e.toMap()).toList(),
//         'description_1': description1,
//         'description_2': description2,
//         'header_image': headerImage,
//         'image': image,
//         'values_image': valuesImage,
//         'updatedAt': updatedAt?.toIso8601String(),
//         'updated_by': updatedBy,
//       };
//
//   /// `dart:convert`
//   ///
//   /// Parses the string and returns the resulting Json object as [AboutUsData].
//   factory AboutUsData.fromJson(String data) {
//     return AboutUsData.fromMap(json.decode(data) as Map<String, dynamic>);
//   }
//
//   /// `dart:convert`
//   ///
//   /// Converts [AboutUsData] to a JSON string.
//   String toJson() => json.encode(toMap());
//
//   AboutUsData copyWith({
//     Numbers? numbers,
//     Mission? mission,
//     Message? message,
//     String? id,
//     int? v,
//     DateTime? createdAt,
//     DateTime? updatedAt,
//     List<Value>? values,
//     String? description1,
//     String? description2,
//     String? headerImage,
//     String? image,
//     String? valuesImage,
//     DateTime? updatedAtB,
//     String? updatedBy,
//   }) {
//     return AboutUsData(
//       numbers: numbers ?? this.numbers,
//       mission: mission ?? this.mission,
//       message: message ?? this.message,
//       id: id ?? this.id,
//       v: v ?? this.v,
//       createdAt: createdAt ?? this.createdAt,
//       updatedAt: updatedAt ?? this.updatedAt,
//       values: values ?? this.values,
//       description1: description1 ?? this.description1,
//       description2: description2 ?? this.description2,
//       headerImage: headerImage ?? this.headerImage,
//       image: image ?? this.image,
//       valuesImage: valuesImage ?? this.valuesImage,
//       updatedAtB: updatedAt ?? this.updatedAt,
//       updatedBy: updatedBy ?? this.updatedBy,
//     );
//   }
//
//   @override
//   bool get stringify => true;
//
//   @override
//   List<Object?> get props {
//     return [
//       numbers,
//       mission,
//       message,
//       id,
//       v,
//       createdAt,
//       updatedAt,
//       values,
//       description1,
//       description2,
//       headerImage,
//       image,
//       valuesImage,
//       updatedAt,
//       updatedBy,
//     ];
//   }
// }
