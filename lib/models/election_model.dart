import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:voting_app/models/candidate_model.dart';

class ElectionModel {
  final String electionName;
  final List<CandidateModel> electionParticipants;
  final DateTime electionStartDate;
  final DateTime electionEndDate;
  final String electionCode;

  ElectionModel({
    required this.electionName,
    required this.electionParticipants,
    required this.electionStartDate,
    required this.electionEndDate,
    required this.electionCode,
  });

  ElectionModel copyWith({
    String? electionName,
    List<CandidateModel>? electionParticipants,
    DateTime? electionStartDate,
    DateTime? electionEndDate,
    String? electionCode,
  }) {
    return ElectionModel(
      electionName: electionName ?? this.electionName,
      electionParticipants: electionParticipants ?? this.electionParticipants,
      electionStartDate: electionStartDate ?? this.electionStartDate,
      electionEndDate: electionEndDate ?? this.electionEndDate,
      electionCode: electionCode ?? this.electionCode,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'electionName': electionName});
    result.addAll({'electionParticipants': electionParticipants.map((x) => x.toMap()).toList()});
    result.addAll({'electionStartDate': electionStartDate.millisecondsSinceEpoch});
    result.addAll({'electionEndDate': electionEndDate.millisecondsSinceEpoch});
    result.addAll({'electionCode': electionCode});

    return result;
  }

  factory ElectionModel.fromMap(Map<String, dynamic> map) {
    return ElectionModel(
      electionName: map['electionName'] ?? '',
      electionParticipants: List<CandidateModel>.from(
          map['electionParticipants']?.map((x) => CandidateModel.fromMap(x))),
      electionStartDate: DateTime.fromMillisecondsSinceEpoch(map['electionStartDate']),
      electionEndDate: DateTime.fromMillisecondsSinceEpoch(map['electionEndDate']),
      electionCode: map['electionCode'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ElectionModel.fromJson(String source) => ElectionModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ElectionModel(electionName: $electionName, electionParticipants: $electionParticipants, electionStartDate: $electionStartDate, electionEndDate: $electionEndDate, electionCode: $electionCode)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ElectionModel &&
        other.electionName == electionName &&
        listEquals(other.electionParticipants, electionParticipants) &&
        other.electionStartDate == electionStartDate &&
        other.electionEndDate == electionEndDate &&
        other.electionCode == electionCode;
  }

  @override
  int get hashCode {
    return electionName.hashCode ^
        electionParticipants.hashCode ^
        electionStartDate.hashCode ^
        electionEndDate.hashCode ^
        electionCode.hashCode;
  }
}
