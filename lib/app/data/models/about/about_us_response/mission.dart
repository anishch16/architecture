// import 'dart:convert';
//
// import 'package:equatable/equatable.dart';
//
// class Mission extends Equatable {
//   final String? image;
//   final String? mission;
//   final String? vision;
//   final String? goal;
//   final String? updatedBy;
//   final DateTime? updatedAt;
//
//   const Mission({
//     this.image,
//     this.mission,
//     this.vision,
//     this.goal,
//     this.updatedBy,
//     this.updatedAt,
//   });
//
//   factory Mission.fromMap(Map<String, dynamic> data) => Mission(
//         image: data['image'] as String?,
//         mission: data['mission'] as String?,
//         vision: data['vision'] as String?,
//         goal: data['goal'] as String?,
//         updatedBy: data['updated_by'] as String?,
//         updatedAt: data['updated_at'] == null
//             ? null
//             : DateTime.parse(data['updated_at'] as String),
//       );
//
//   Map<String, dynamic> toMap() => {
//         'image': image,
//         'mission': mission,
//         'vision': vision,
//         'goal': goal,
//         'updated_by': updatedBy,
//         'updated_at': updatedAt?.toIso8601String(),
//       };
//
//   /// `dart:convert`
//   ///
//   /// Parses the string and returns the resulting Json object as [Mission].
//   factory Mission.fromJson(String data) {
//     return Mission.fromMap(json.decode(data) as Map<String, dynamic>);
//   }
//
//   /// `dart:convert`
//   ///
//   /// Converts [Mission] to a JSON string.
//   String toJson() => json.encode(toMap());
//
//   Mission copyWith({
//     String? image,
//     String? mission,
//     String? vision,
//     String? goal,
//     String? updatedBy,
//     DateTime? updatedAt,
//   }) {
//     return Mission(
//       image: image ?? this.image,
//       mission: mission ?? this.mission,
//       vision: vision ?? this.vision,
//       goal: goal ?? this.goal,
//       updatedBy: updatedBy ?? this.updatedBy,
//       updatedAt: updatedAt ?? this.updatedAt,
//     );
//   }
//
//   @override
//   bool get stringify => true;
//
//   @override
//   List<Object?> get props {
//     return [
//       image,
//       mission,
//       vision,
//       goal,
//       updatedBy,
//       updatedAt,
//     ];
//   }
// }
