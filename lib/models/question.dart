class Question {
  final String id;
  final String text;
  final String correctOptionId;
  final int points;
  final List<Option> options;

  Question({
    required this.id,
    required this.text,
    required this.correctOptionId,
    required this.options,
    this.points = 1,
  });
  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      id: map['id'] ?? '',
      text: map['text'] ?? '',
      correctOptionId: map['correctOptionId'] ?? '',
      options: (map['options'] as List<dynamic>)
          .map((o) => Option.fromMap(o))
          .toList(),
      points: map['points'] ?? 1,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'text': text,
      'correctOptionId': correctOptionId,
      'options': options.map((o) => o.toMap()).toList(),
      'points': points,
    };
  }
}

class Option {
  final String id;
  final String text;

  Option({
    required this.id,
    required this.text,
  });

  factory Option.fromMap(Map<String, dynamic> map) {
    return Option(
      id: map['id'] ?? '',
      text: map['text'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'text': text,
    };
  }
}
