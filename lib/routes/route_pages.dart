import 'package:app_education/main_screen.dart';
import 'package:app_education/routes/app_routes.dart';
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
import 'package:app_education/views/teacher/teacher_home_sreen.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => const OnboardingScreen(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: AppRoutes.register,
      page: () => const RegisterScreen(),
    ),
    GetPage(
      name: AppRoutes.forgotPassword,
      page: () => const ForgotPasswordScreen(),
    ),
    GetPage(
      name: AppRoutes.main,
      page: () => MainScreen(
        initialIndex: Get.arguments is Map<String, dynamic>
            ? Get.arguments['initialIndex'] as int?
            : null,
      ),
    ),
    GetPage(
      name: AppRoutes.courseList,
      page: () => CourseListScreen(
        categoryId: Get.arguments?['category'] as String?,
        categoryName: Get.arguments?['categoryName'] as String?,
      ),
    ),
    GetPage(
      name: '/course/:id',
      page: () => CourseDetailScreen(
        courseId: Get.parameters['id'] ?? '',
      ),
    ),
    GetPage(
      name: AppRoutes.quizList,
      page: () => const QuizListScreen(),
    ),
    GetPage(
      name: AppRoutes.payment,
      page: () => PaymentScreen(
        courseId: Get.arguments['courseId'] as String,
        courseName: Get.arguments['courseName'] as String,
        price: Get.arguments['price'] as double,
      ),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => const ProfileScreen(),
    ),
    GetPage(
      name: AppRoutes.teacherHome,
      page: () => const TeacherHomeSreen(),
    ),
  ];
}
