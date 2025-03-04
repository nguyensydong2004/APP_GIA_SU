class QuizAttempt {
  final String id;
  final String quizId;
  final String userId;
  final Map<String, String> answers;
  final int score;
  final DateTime startAt;
  final DateTime? completedAt;
  final int timeSpent;

  QuizAttempt({
    required this.id,
    required this.quizId,
    required this.userId,
    required this.answers,
    required this.score,
    required this.startAt,
    this.completedAt,
    required this.timeSpent,
  });

  factory QuizAttempt.fromJson(Map<String, dynamic> json) {
    return QuizAttempt(
      id: json['id'] ?? '',
      quizId: json['quizId'] ?? '',
      userId: json['userId'] ?? '',
      answers: Map<String, String>.from(json['answers'] ?? {}),
      score: json['score'] ?? 0,
      startAt: DateTime.parse(json['startAt']),
      completedAt: json['completeAt'] != null
          ? DateTime.parse(json['completeAt'])
          : null,
      timeSpent: json['timeSpent'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'quizId': quizId,
      'userId': userId,
      'answers': answers,
      'score': score,
      'startAt': startAt.toIso8601String(),
      'completedAt': completedAt?.toIso8601String(),
      'timeSpent': timeSpent,
    };
  }
}
