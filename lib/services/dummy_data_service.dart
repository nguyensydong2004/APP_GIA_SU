import 'package:app_education/models/chat_message.dart';
import 'package:app_education/models/course.dart';
import 'package:app_education/models/lesson.dart';
import 'package:app_education/models/question.dart';
import 'package:app_education/models/quiz.dart';
import 'package:app_education/models/quiz_attempt.dart';

class DummyDataService {
  static final List<Course> courses = [
    Course(
      id: '1',
      title: 'Flutter Development Bootcamp',
      description:
          'Master Flutter and Dart from scratch. Build real-world cross-platform apps',
      imageUrl:
          'https://www.moveoapps.com/blog/wp-content/uploads/2020/07/guide-to-flutter-app-development.png',
      instructorId: 'inst_1',
      categoryId: '1',
      price: 99.99,
      lessons: _createFlutterLessons(),
      level: 'Intermediate',
      requirements: [
        'Basic programming knowledge',
        'Computer with internet connection',
        'Dedication to learn',
      ],
      WhatYouWillLearn: [
        'Build beautiful native apps',
        'Master Dart programming',
        'State management with GetX',
        'Rest API integration',
        'Local data storage'
      ],
      createAt: DateTime.now().subtract(const Duration(days: 30)),
      updateAt: DateTime.now(),
      rating: 4.8,
      reviewCount: 245,
      enrollmentCount: 1200,
    ),
    Course(
      id: '2',
      title: 'UI/UX Design Masterclass',
      description:
          'Learn professional UI/UX design from scratch using Figma and Adobe XD',
      imageUrl:
          'https://pobacademy.com/wp-content/uploads/2023/10/POB-Academy-UI-UX-Design-Masterclass-With-Figma.png',
      instructorId: 'inst_2',
      categoryId: '2',
      price: 69.99,
      lessons: _createDesignLessons(),
      level: 'Beginner',
      requirements: [
        'No prior experience needed',
        'Figma (free account)',
        'Creative mindset',
      ],
      WhatYouWillLearn: [
        'Design principles and theory',
        'User research methods',
        'Wireframing and prototyping',
        'Design systems',
        'Portfolio building'
      ],
      createAt: DateTime.now().subtract(const Duration(days: 45)),
      updateAt: DateTime.now(),
      rating: 4.6,
      reviewCount: 185,
      enrollmentCount: 801,
      isPremium: true,
    ),
    Course(
      id: '3',
      title: 'Digital Marketing Essentials',
      description: 'Master digital marketing strategies for business growth.',
      imageUrl:
          'https://aist.global/img/meta/Digital-Marketing-AIST-GLOBAL.jpg',
      instructorId: 'inst_3',
      categoryId: '3',
      price: 99.99,
      lessons: _createMarketingLessons(),
      level: 'Intermediate',
      requirements: [
        'Basic marketing knowledge',
        'Social media familiarity',
        'Google Analytics account',
      ],
      WhatYouWillLearn: [
        'SEO optimization',
        'Social media marketing',
        'Email campaingns',
        'Google Analytics',
        'Content marketting'
      ],
      createAt: DateTime.now().subtract(const Duration(days: 45)),
      updateAt: DateTime.now(),
      rating: 4.7,
      reviewCount: 155,
      enrollmentCount: 751,
    ),
    Course(
      id: '4',
      title: 'Advanced Mobile App Architecture',
      description:
          'Learn advanced architectural patterns and best pratices for mobile app development.',
      imageUrl:
          'https://d274cmdd0goq94.cloudfront.net/wp-content/uploads/2023/11/Mobile-App-Architecture.png',
      instructorId: 'inst_4',
      categoryId: '4',
      price: 65.99,
      lessons: _createArchitectureLessons(),
      level: 'Advanced',
      requirements: [
        'Basic knowledge of mobile app development',
        'Familiarity with software design patterns',
        'Experience with Flutter or native app development',
      ],
      WhatYouWillLearn: [
        'Advanced architectural patterns for mobile apps',
        'Best practices for scalable app development',
        'State management techniques',
        'Dependency injection in mobile apps',
        'Optimizing app performance and maintainability'
      ],
      createAt: DateTime.now().subtract(const Duration(days: 45)),
      updateAt: DateTime.now(),
      rating: 4.9,
      reviewCount: 140,
      enrollmentCount: 521,
    ),
    Course(
      id: '5',
      title: 'Motion Design with After Effects',
      description:
          'Create stunning motion graphics and visual effects using Adobe After Effects.',
      imageUrl:
          'https://mir-s3-cdn-cf.behance.net/projects/404/0015b4102193791.Y3JvcCw4MDgsNjMyLDAsMA.jpg',
      instructorId: 'inst_5',
      categoryId: '5',
      price: 91.99,
      lessons: _createMotionDesignLessons(),
      level: 'Intermediate',
      requirements: [
        'Basic knowledge of graphic design',
        'Familiarity with Adobe After Effects interface',
        'Experience with Photoshop or Illustrator is a plus',
      ],
      WhatYouWillLearn: [
        'Creating stunning motion graphics',
        'Mastering keyframe animations',
        'Applying visual effects and transitions',
        'Working with typography and kinetic text',
        'Exporting and optimizing animations for various platforms'
      ],
      createAt: DateTime.now().subtract(const Duration(days: 45)),
      updateAt: DateTime.now(),
      rating: 4.9,
      reviewCount: 155,
      enrollmentCount: 421,
      isPremium: true,
    ),
    Course(
      id: '6',
      title: 'Financial Management Fundamentals',
      description:
          'Mater the basics of financial management and business economics.',
      imageUrl:
          'https://testallbank.com/wp-content/uploads/2021/02/fundamentals-financial-management-concise-edition-8th-edition-brigham-solutions-manual.jpg',
      instructorId: 'inst_6',
      categoryId: '6',
      price: 96.69,
      lessons: _createFinanceLessons(),
      level: 'Beginner',
      requirements: [
        'Basic understanding of mathematics',
        'Interest in financial planning and management',
        'No prior financial knowledge required',
      ],
      WhatYouWillLearn: [
        'Fundamentals of financial management',
        'Budgeting and financial planning',
        'Investment strategies and risk management',
        'Understanding financial statements',
        'Cash flow and expense management',
      ],
      createAt: DateTime.now().subtract(const Duration(days: 45)),
      updateAt: DateTime.now(),
      rating: 4.5,
      reviewCount: 95,
      enrollmentCount: 430,
    ),
    Course(
      id: '7',
      title: 'Professional Photography Masterclass',
      description:
          'Learn professional photography techniques from composition to post-processing.',
      imageUrl:
          'https://static.skillshare.com/uploads/video/thumbnails/3f09dc73fb00c1bfefe2bdaf1474cea3/original',
      instructorId: 'inst_7',
      categoryId: '7',
      price: 69.99,
      lessons: _createPhotographyLessons(),
      level: 'Beginner',
      requirements: [
        'A camera (DSLR, mirrorless, or smartphone)',
        'Basic understanding of camera settings is a plus',
        'Passion for photography and creativity',
      ],
      WhatYouWillLearn: [
        'Mastering camera settings and exposure',
        'Composition techniques for stunning photos',
        'Lighting and portrait photography fundamentals',
        'Editing and post-processing in Lightroom and Photoshop',
        'Building a professional photography portfolio',
      ],
      createAt: DateTime.now().subtract(const Duration(days: 45)),
      updateAt: DateTime.now(),
      rating: 4.4,
      reviewCount: 165,
      enrollmentCount: 551,
      isPremium: true,
    ),
    Course(
      id: '8',
      title: 'English Business Communication',
      description: 'Master business English for professional success.',
      imageUrl:
          'https://th.bing.com/th/id/OIP.DEedJi59_W5eXGxPa-jGxwHaJ4?rs=1&pid=ImgDetMain',
      instructorId: 'inst_8',
      categoryId: '8',
      price: 98.99,
      lessons: _createLanguageLessons(),
      level: 'Intermediate',
      requirements: [
        'Basic understanding of English',
        'Interest in improving business communication skills',
        'No prior business experience required',
      ],
      WhatYouWillLearn: [
        'Effective email writing for business',
        'Professional communication and etiquette',
        'Negotiation and persuasion techniques',
        'Giving impactful presentations and speeches',
        'Building strong business relationships through communication',
      ],
      createAt: DateTime.now().subtract(const Duration(days: 45)),
      updateAt: DateTime.now(),
      rating: 4.6,
      reviewCount: 255,
      enrollmentCount: 651,
    ),
  ];

  static final List<Quiz> quizzes = [
    Quiz(
      id: '1',
      title: ' Flutter Basics Quiz',
      description: 'Test',
      timeLimit: 30,
      question: _createFlutterQuizQuestions(),
      createdAt: DateTime.now().subtract(const Duration(days: 5)),
      isActive: true,
    ),
    Quiz(
      id: '2',
      title: ' Dart Programming Quiz',
      description: 'Check your understanding of Dart programming concepts',
      timeLimit: 25,
      question: _createDartQuizQuestions(),
      createdAt: DateTime.now().subtract(const Duration(days: 3)),
      isActive: true,
    ),
    Quiz(
      id: '3',
      title: ' State Management Quiz',
      description: 'Test your knowledge of Flutter state management',
      timeLimit: 20,
      question: _createStateManagementQuizQuestions(),
      createdAt: DateTime.now().subtract(const Duration(days: 18)),
      isActive: true,
    ),
  ];

  static final List<QuizAttempt> quizAttempts = [];

  static List<Lesson> _createFlutterLessons() {
    return [
      Lesson(
        id: '1',
        title: 'Introduction Flutter',
        description:
            'This is a detailed description for Introduction to Flutter',
        videoUrl: 'https://www.youtube.com/watch?v=Dpk8eSW7kUA',
        duration: 30,
        resources: _createDummyResources(),
        isPreview: true,
        isLocked: false,
      ),
      _createLesson('2', 'Dart Programming', false, false),
      _createLesson('3', 'Building Ui with Widgets', false, false),
      _createLesson('4', 'State Management', false, false),
      _createLesson('5', 'Working with APIs', false, false),
      _createLesson('6', 'Local Data Storage', false, false),
    ];
  }

  static List<Lesson> _createDesignLessons() {
    return [
      _createLesson('1', 'Design Fundamentals', true, false),
      _createLesson('2', 'Color Theory', false, false),
      _createLesson('3', 'Typography Basics', false, false),
      _createLesson('4', 'Layout Design', false, false),
      _createLesson('5', 'Prototyping', false, false),
    ];
  }

  static List<Lesson> _createMarketingLessons() {
    return [
      _createLesson('1', 'Digital Marketing OverView', true, true),
      _createLesson('2', 'Seo Fundamentals', false, false),
      _createLesson('3', 'Social Media Strategy', false, false),
      _createLesson('4', 'Email Marketing', false, false),
      _createLesson('5', 'Analytics & Reporting', false, false),
    ];
  }

  static List<Lesson> _createArchitectureLessons() {
    return [
      _createLesson('1', 'Clean Architecture Overview', true, true),
      _createLesson('2', 'SOLID Principles', false, true),
      _createLesson('3', 'Repository Pattern', false, true),
      _createLesson('4', 'Dependency Injecttion', false, false),
      _createLesson('5', 'Unit Testing', false, false),
    ];
  }

  static List<Lesson> _createMotionDesignLessons() {
    return [
      _createLesson('1', 'Animaion Basics', true, false),
      _createLesson('2', 'Keyframe Animation', false, false),
      _createLesson('3', 'Character Rigging', false, false),
      _createLesson('4', 'Visual Effects', false, false),
      _createLesson('5', 'Project workflow', false, false),
    ];
  }

  static List<Lesson> _createFinanceLessons() {
    return [
      _createLesson('1', 'Introduction to Finance', true, false),
      _createLesson('2', 'Financial Statements', false, false),
      _createLesson('3', 'Investment Basic', false, false),
      _createLesson('4', 'Risk Management', false, false),
      _createLesson('5', 'Business Valuation', false, false),
    ];
  }

  static List<Lesson> _createPhotographyLessons() {
    return [
      _createLesson('1', 'Understand Your Camera', true, false),
      _createLesson('2', 'Composition Basic', false, false),
      _createLesson('3', 'Lighting Techniques', false, false),
      _createLesson('4', 'Portrait Photography', false, false),
      _createLesson('5', 'Post-Processing', false, false),
    ];
  }

  static List<Lesson> _createLanguageLessons() {
    return [
      _createLesson('1', 'Business Vocabulary', true, false),
      _createLesson('2', 'Email Writing', false, false),
      _createLesson('3', 'Presentation Skill', false, false),
      _createLesson('4', 'Negotiation Language', false, false),
      _createLesson('5', 'Professional Communication', false, false),
    ];
  }

  static Lesson _createLesson(
      String id, String title, bool isPreview, bool isCompleted) {
    return Lesson(
      id: 'lesson_$id',
      title: title,
      description: 'This is a detailed description for $title',
      videoUrl: 'https://www.youtube.com/watch?v=l9OAu0lwg-Q',
      duration: 30,
      resources: _createDummyResources(),
      isPreview: isPreview,
      isLocked: !isPreview,
      isCompleted: isCompleted,
    );
  }

  static List<Resource> _createDummyResources() {
    return [
      Resource(
          id: 'res_1',
          title: 'Lesson Slides',
          type: 'pdf',
          url: 'https://example.com/slides.pdf'),
      Resource(
          id: 'res_2',
          title: 'Exercise Files',
          type: 'zip',
          url: 'https://example.com/exercises.pdf'),
    ];
  }

  static Course getCourseById(String id) {
    return courses.firstWhere(
      (course) => course.id == id,
      orElse: () => courses.first,
    );
  }

  static List<Course> getCoursesByCategory(String categoryId) {
    return courses.where((course) => course.categoryId == categoryId).toList();
  }

  static List<Course> getInstructorCourses(String instructorId) {
    return courses
        .where((course) => course.instructorId == instructorId)
        .toList();
  }

  static bool isCourseCompleted(String courseId) {
    final course = getCourseById(courseId);
    return course.lessons.every((lesson) => lesson.isCompleted);
  }

  static List<Question> _createFlutterQuizQuestions() {
    return [
      Question(
        id: '1',
        text: 'What is Flutter?',
        correctOptionId: 'a',
        options: [
          Option(id: 'a', text: 'A UI framework for building native apps'),
          Option(id: 'b', text: ' Programming language'),
          Option(id: 'a', text: 'A database manage system'),
          Option(id: 'a', text: 'A design tool'),
        ],
        points: 1,
      ),
      Question(
        id: '2',
        text: 'Which programming language is used in FLutter?',
        correctOptionId: 'c',
        options: [
          Option(id: 'a', text: 'Java'),
          Option(id: 'b', text: 'Kotlin'),
          Option(id: 'a', text: 'Dart'),
          Option(id: 'a', text: 'Swift'),
        ],
        points: 1,
      ),
    ];
  }

  static List<Question> _createDartQuizQuestions() {
    return [
      Question(
        id: '1',
        text: 'What is Dart?',
        correctOptionId: 'b',
        options: [
          Option(id: 'a', text: 'A markup language'),
          Option(id: 'b', text: ' An object-oriented programming language'),
          Option(id: 'a', text: 'A database'),
          Option(id: 'a', text: 'A web browser'),
        ],
        points: 1,
      ),
    ];
  }

  static List<Question> _createStateManagementQuizQuestions() {
    return [
      Question(
        id: '1',
        text: 'What is state management in Flutter?',
        correctOptionId: 'a',
        options: [
          Option(id: 'a', text: 'Managing app data and UI updates'),
          Option(id: 'b', text: 'Managing device storage'),
          Option(id: 'a', text: 'Managing user authentication'),
          Option(id: 'a', text: 'managing newwork request'),
        ],
        points: 1,
      ),
    ];
  }

  static Quiz getQuizById(String id) {
    return quizzes.firstWhere(
      (quiz) => quiz.id == id,
      orElse: () => quizzes.first,
    );
  }

  static void saveQuizAttempt(QuizAttempt attempt) {
    quizAttempts.add(attempt);
  }

  static List<QuizAttempt> getQuizAttempts(String userId) {
    return quizAttempts.where((attempt) => attempt.userId == userId).toList();
  }

  static final Set<String> _purchasedCourseIds = {};

  static bool isCourseUnlocked(String courseId) {
    final course = getCourseById(courseId);
    return !course.isPremium || _purchasedCourseIds.contains(courseId);
  }

  static void addPurchasedCourse(String courseId) {
    _purchasedCourseIds.add(courseId);
  }

  static final Map<String, TeacherStats> teacherStats = {
    'inst_1': TeacherStats(
      totalStudents: 1234,
      activeCourses: 8,
      totalRevenue: 12345.67,
      averageRating: 4.8,
      monthlyEnrollments: [156, 187, 234, 278, 312, 289],
      monthlyRevenue: [1234, 1456, 1890, 2100, 2345, 2189],
      studentEngagement: StudentEngagement(
        averageCompletionRate: 0.78,
        averageTimePerLesson: 45,
        activeStudentsThisWeek: 156,
        courseCompletionRates: {
          "Flutter Development Bootcamp": 0.85,
          "Advanced Flutter": 0.72,
          "Flutter State Management": 0.68,
        },
      ),
    ),
  };

  static final Map<String, List<StudentProgress>> studentProgress = {
    'inst_1': [
      StudentProgress(
        studentId: 'student_1',
        studentName: 'Khien',
        courseId: '1',
        courseName: 'Flutter Development Bootcamp',
        progress: 0.75,
        lastActive: DateTime.now().subtract(const Duration(hours: 2)),
        quizScores: [75, 92, 79, 89],
        completedLessons: 12,
        totalLessons: 16,
        averageTimePerLesson: 45,
      ),
      StudentProgress(
        studentId: 'student_2',
        studentName: 'Dong',
        courseId: '1',
        courseName: 'Flutter Development Bootcamp',
        progress: 0.5,
        lastActive: DateTime.now().subtract(const Duration(days: 1)),
        quizScores: [75, 92, 79],
        completedLessons: 9,
        totalLessons: 16,
        averageTimePerLesson: 38,
      ),
    ],
  };

  static TeacherStats getTeacherStats(String instructorId) {
    final instructorCourse = getInstructorCourses(instructorId);
    final stats = teacherStats[instructorId] ?? TeacherStats.empty();

    return TeacherStats(
      totalStudents: instructorCourse.fold(
          0, (sum, course) => sum + course.enrollmentCount),
      activeCourses: instructorCourse.length,
      totalRevenue: instructorCourse.fold(
          0.0, (sum, course) => sum + (course.price * course.enrollmentCount)),
      averageRating: instructorCourse.isEmpty
          ? 0.0
          : instructorCourse.fold(0.0, (sum, course) => sum + course.rating) /
              instructorCourse.length,
      monthlyEnrollments: stats.monthlyEnrollments,
      monthlyRevenue: stats.monthlyRevenue,
      studentEngagement: stats.studentEngagement,
    );
  }

  static List<StudentProgress> getStudentProgress(String instructorId) {
    final instructorCourses = getInstructorCourses(instructorId);
    final courseIds = instructorCourses.map((c) => c.id).toSet();

    return studentProgress[instructorId]
            ?.where((progress) => courseIds.contains(progress.courseId))
            .toList() ??
        [];
  }

  static Stream<List<ChatMessage>> getChatMessages(String courseId) {
    return Stream.value(_dummyChats.values
        .expand((messages) => messages)
        .where((msg) => msg.courseId == courseId)
        .toList());
  }

  static Stream<List<ChatMessage>> getTeacherChats(String instructorId) {
    return Stream.value(_dummyChats[instructorId] ?? []);
  }

  static Map<String, List<ChatMessage>> getTeacherChatsByCourse(
      String instructorId) {
    final Map<String, List<ChatMessage>> chatsByCourse = {};
    final messages = _dummyChats[instructorId] ?? [];

    for (var message in messages) {
      if (!chatsByCourse.containsKey(message.courseId)) {
        chatsByCourse[message.courseId] = [];
      }
      chatsByCourse[message.courseId]!.add(message);
    }
    return chatsByCourse;
  }

  static final Map<String, List<ChatMessage>> _dummyChats = {
    'inst_1': [
      ChatMessage(
        id: '1',
        senderId: 'student_1',
        receiverId: 'inst_1',
        courseId: '1',
        message: 'Hi, I have a question about ...',
        timeStamp: DateTime.now().subtract(const Duration(minutes: 5)),
      ),
      ChatMessage(
        id: '2',
        senderId: 'student_2',
        receiverId: 'inst_1',
        courseId: '1',
        message: 'Hi, Could you ...',
        timeStamp: DateTime.now().subtract(const Duration(minutes: 30)),
      ),
    ],
  };

  static void updateLessonStatus(String courseId, String lessonId,
      {bool? isCompleted, bool? isLocked}) {
    final courseIndex = courses.indexWhere((c) => c.id == courseId);
    if (courseIndex != -1) {
      final course = courses[courseIndex];
      final lessonIndex = course.lessons.indexWhere((l) => l.id == lessonId);

      if (courseIndex != -1) {
        var updatedLesson = course.lessons[lessonIndex].copyWith(
          isCompleted: isCompleted ?? course.lessons[lessonIndex].isCompleted,
          isLocked: isLocked ?? course.lessons[lessonIndex].isLocked,
        );
        courses[courseIndex].lessons[lessonIndex] = updatedLesson;
      }
    }
  }

  static bool isLessonComplete(String courseId, String lessonId) {
    final course = getCourseById(courseId);
    return course.lessons
        .firstWhere(
          (l) => l.id == lessonId,
          orElse: () => Lesson(
              id: '',
              title: '',
              description: '',
              videoUrl: '',
              duration: 0,
              resources: []),
        )
        .isCompleted;
  }
}

class TeacherStats {
  final int totalStudents;
  final int activeCourses;
  final double totalRevenue;
  final double averageRating;
  final List<int> monthlyEnrollments;
  final List<double> monthlyRevenue;
  final StudentEngagement studentEngagement;

  TeacherStats({
    required this.totalStudents,
    required this.activeCourses,
    required this.totalRevenue,
    required this.averageRating,
    required this.monthlyEnrollments,
    required this.monthlyRevenue,
    required this.studentEngagement,
  });
  factory TeacherStats.empty() => TeacherStats(
        totalStudents: 0,
        activeCourses: 0,
        totalRevenue: 0,
        averageRating: 0,
        monthlyEnrollments: [],
        monthlyRevenue: [],
        studentEngagement: StudentEngagement.empty(),
      );
}

class StudentEngagement {
  final double averageCompletionRate;
  final int averageTimePerLesson;
  final int activeStudentsThisWeek;
  final Map<String, double> courseCompletionRates;

  StudentEngagement({
    required this.averageCompletionRate,
    required this.averageTimePerLesson,
    required this.activeStudentsThisWeek,
    required this.courseCompletionRates,
  });

  factory StudentEngagement.empty() => StudentEngagement(
        averageCompletionRate: 0,
        averageTimePerLesson: 0,
        activeStudentsThisWeek: 0,
        courseCompletionRates: {},
      );
}

class StudentProgress {
  final String studentId;
  final String studentName;
  final String courseId;
  final String courseName;
  final double progress;
  final DateTime lastActive;
  final List<int> quizScores;
  final int completedLessons;
  final int totalLessons;
  final int averageTimePerLesson;

  double get averageScore {
    if (quizScores.isEmpty) return 0.0;
    return quizScores.reduce((a, b) => a + b) / quizScores.length / 100;
  }

  StudentProgress({
    required this.studentId,
    required this.studentName,
    required this.courseId,
    required this.courseName,
    required this.progress,
    required this.lastActive,
    required this.quizScores,
    required this.completedLessons,
    required this.totalLessons,
    required this.averageTimePerLesson,
  });
}
