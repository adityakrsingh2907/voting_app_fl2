import 'dart:convert';

class CandidateModel {
  final String candidateName;
  final int voteCount;

  CandidateModel({
    required this.candidateName,
    required this.voteCount,
  });

  CandidateModel copyWith({
    String? candidateName,
    int? voteCount,
  }) {
    return CandidateModel(
      candidateName: candidateName ?? this.candidateName,
      voteCount: voteCount ?? this.voteCount,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'candidateName': candidateName});
    result.addAll({'voteCount': voteCount});

    return result;
  }

  factory CandidateModel.fromMap(Map<String, dynamic> map) {
    return CandidateModel(
      candidateName: map['candidateName'] ?? '',
      voteCount: map['voteCount']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CandidateModel.fromJson(String source) => CandidateModel.fromMap(json.decode(source));

  @override
  String toString() => 'CandidateModel(candidateName: $candidateName, voteCount: $voteCount)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CandidateModel &&
        other.candidateName == candidateName &&
        other.voteCount == voteCount;
  }

  @override
  int get hashCode => candidateName.hashCode ^ voteCount.hashCode;
}
