import 'package:app_education/main_screen.dart';
import 'package:app_education/views/auth/forgot_password_screen.dart';
import 'package:app_education/views/auth/login_screen.dart';
import 'package:app_education/views/auth/register_screen.dart';
import 'package:app_education/views/course/course_detail/widgets/course_detail_screen.dart';
import 'package:app_education/views/course/course_list/widgets/course_list_screen.dart';
import 'package:app_education/views/course/payment/widgets/payment_screen.dart';
import 'package:app_education/views/home/home_screen.dart';
import 'package:app_education/views/onboarding/onboarding_screen.dart';
import 'package:app_education/views/profile/profile_screen.dart';
import 'package:app_education/views/quiz/quiz_list/widgets/quiz_list_screen.dart';
import 'package:app_education/views/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:app_education/views/teacher/teacher_home_sreen.dart';
import 'package:app_education/main_screen.dart';

class AppRoutes {
  //main
  static const String main = '/main';

  //auth routes
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String home = '/home';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';

  // course route
  static const String courseList = '/courses';
  static const String courseDetail = '/course/:id';
  static const String payment = '/payment';

  // quiz  route
  static const String quizList = '/quizzes';
  // profile  route
  static const String profile = '/profile';

  //teacher
  static const String teacherHome = '/teacher/home';

  static Route<dynamic> onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );

      case onboarding:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case home:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      case register:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );
      case forgotPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordScreen(),
        );
      case teacherHome:
        return MaterialPageRoute(
          builder: (_) => const TeacherHomeSreen(),
        );
      case payment:
        final args = setting.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (_) => PaymentScreen(
            courseId: args['courseId'] ?? '',
            courseName: args['courseName'] ?? '',
            price: args['price'] ?? 0.0,
          ),
        );
      case main:
        return MaterialPageRoute(
          builder: (_) => MainScreen(
            initialIndex: setting.arguments is Map
                ? (setting.arguments as Map<String, dynamic>)['initialIndex']
                    as int?
                : null,
          ),
        );
      case courseList:
        final args = setting.arguments as Map<String, dynamic>?;
        return MaterialPageRoute(
          builder: (_) => CourseListScreen(
            categoryId: args?['category'] as String?,
            categoryName: args?['categoryName'] as String?,
          ),
        );

      case courseDetail:
        String courseId;
        if (setting.arguments != null) {
          courseId = setting.arguments as String;
        } else {
          final uri = Uri.parse(setting.name ?? '');
          courseId = uri.pathSegments.last;
        }
        return MaterialPageRoute(
            builder: (_) => CourseDetailScreen(courseId: courseId));
      case quizList:
        return MaterialPageRoute(
          builder: (_) => const QuizListScreen(),
        );
      case profile:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Route not found!'),
            ),
          ),
        );
    }
  }
}
