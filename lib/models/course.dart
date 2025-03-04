import 'package:app_education/models/lesson.dart';
import 'package:flutter/widgets.dart';

class Course {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final String instructorId;
  final String categoryId;
  final double price;
  final List<Lesson> lessons;
  final double rating;
  final int reviewCount;
  final int enrollmentCount;
  final String level;
  final List<String> requirements;
  final List<String> WhatYouWillLearn;
  final DateTime createAt;
  final DateTime updateAt;
  final bool isPremium;

  Course({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.instructorId,
    required this.categoryId,
    required this.price,
    required this.lessons,
    this.rating = 0.0,
    this.reviewCount = 0,
    this.enrollmentCount = 0,
    required this.level,
    required this.requirements,
    required this.WhatYouWillLearn,
    required this.createAt,
    required this.updateAt,
    this.isPremium = false,
  });

  factory Course.fromJson(Map<String, dynamic> json) => Course(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        imageUrl: json['imageUrl'],
        instructorId: json['instructorId'],
        categoryId: json['categoryId'].toDouble(),
        price: json['price'],
        lessons: (json['lessons'] as List)
            .map((lesson) => Lesson.fromJson(lesson))
            .toList(),
        rating: json['rating']?.toDouble() ?? 0.0,
        reviewCount: json['reviewCount'] ?? 0,
        enrollmentCount: json['enrollmentCount'] ?? 0,
        level: json['level'],
        requirements: List<String>.from(json['requirements']),
        WhatYouWillLearn: List<String>.from(json['WhatYouWillLearn']),
        createAt: DateTime.parse(json['createAt']),
        updateAt: DateTime.parse(json['updateAt']),
        isPremium: json['isPremium'] ?? false,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'imageUrl': imageUrl,
        'instructorId': instructorId,
        'categoryId': categoryId,
        'price': price,
        'lessons': lessons.map((lesson) => lesson?.toJson()).toList(),
        'rating': rating,
        'reviewCount': reviewCount,
        'enrollmentCount': enrollmentCount,
        'level': level,
        'requirements': requirements,
        'WhatYouWillLearn': WhatYouWillLearn,
        'createAt': createAt.toIso8601String(),
        'updateAt': updateAt.toIso8601String(),
        'isPremium': isPremium,
      };
}
