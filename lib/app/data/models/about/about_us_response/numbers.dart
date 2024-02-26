// import 'dart:convert';
//
// import 'package:equatable/equatable.dart';
//
// class Numbers extends Equatable {
//   final String? clients;
//   final String? team;
//   final String? branch;
//   final String? dealers;
//
//   const Numbers({this.clients, this.team, this.branch, this.dealers});
//
//   factory Numbers.fromMap(Map<String, dynamic> data) => Numbers(
//         clients: data['clients'] as String?,
//         team: data['team'] as String?,
//         branch: data['branch'] as String?,
//         dealers: data['dealers'] as String?,
//       );
//
//   Map<String, dynamic> toMap() => {
//         'clients': clients,
//         'team': team,
//         'branch': branch,
//         'dealers': dealers,
//       };
//
//   /// `dart:convert`
//   ///
//   /// Parses the string and returns the resulting Json object as [Numbers].
//   factory Numbers.fromJson(String data) {
//     return Numbers.fromMap(json.decode(data) as Map<String, dynamic>);
//   }
//
//   /// `dart:convert`
//   ///
//   /// Converts [Numbers] to a JSON string.
//   String toJson() => json.encode(toMap());
//
//   Numbers copyWith({
//     String? clients,
//     String? team,
//     String? branch,
//     String? dealers,
//   }) {
//     return Numbers(
//       clients: clients ?? this.clients,
//       team: team ?? this.team,
//       branch: branch ?? this.branch,
//       dealers: dealers ?? this.dealers,
//     );
//   }
//
//   @override
//   bool get stringify => true;
//
//   @override
//   List<Object?> get props => [clients, team, branch, dealers];
// }
