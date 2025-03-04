import 'package:app_education/routes/app_routes.dart';
import 'package:app_education/services/dummy_data_service.dart';
import 'package:app_education/views/course/course_detail/widgets/reviews_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme/app_colors.dart';
import 'action_buttons.dart';
import 'course_detail_app_bar.dart';
import 'course_info_card.dart';
import 'lessons_list.dart';

class CourseDetailScreen extends StatefulWidget {
  final String courseId;

  const CourseDetailScreen({super.key, required this.courseId});

  @override
  State<CourseDetailScreen> createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lastLesson = Get.parameters['lastLesson'];
    final id = Get.parameters['id'] ?? widget.courseId;
    final course = DummyDataService.getCourseById(id);
    final isCompleted = DummyDataService.isCourseCompleted(course.id);
    final isUnlocked = DummyDataService.isCourseUnlocked(widget.courseId);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CourseDetailAppBar(
            imageUrl: course.imageUrl,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    course.title,
                    style: theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        course.rating.toString(),
                        style: theme.textTheme.bodyMedium,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        '(${course.reviewCount} review)',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.secondary,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '\$${course.price}',
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    course.description,
                    style: theme.textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CourseInfoCard(
                    course: course,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Course Content',
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  LessonsList(
                    courseId: widget.courseId,
                    isUnlocked: isUnlocked,
                    onLessonComplete: () => setState(() {}),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ReviewsSection(
                    courseId: widget.courseId,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ActionButtons(
                    course: course,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: course.isPremium && !isUnlocked
          ? Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: theme.scaffoldBackgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, -5),
                  ),
                ],
              ),
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    AppRoutes.payment,
                    arguments: {
                      'courseId': widget.courseId,
                      'courseName': course.title,
                      'price': course.price,
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  padding: const EdgeInsets.all(16),
                ),
                child: Text('Buy  Now for \$${course.price}'),
              ),
            )
          : null,
    );
  }
}
