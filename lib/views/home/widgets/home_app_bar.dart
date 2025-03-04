import 'package:app_education/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      expandedHeight: 180,
      floating: false,
      pinned: true,
      backgroundColor: AppColors.primary,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.analytics,
            color: Colors.white,
          ),
        )
      ],
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcom back,',
              style: theme.textTheme.bodySmall
                  ?.copyWith(color: AppColors.accent.withOpacity(0.7)),
            ),
            Text(
              'User 1',
              style: theme.textTheme.titleLarge?.copyWith(
                color: AppColors.accent,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.primary,
                AppColors.primaryLight,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
    );
  }
}
