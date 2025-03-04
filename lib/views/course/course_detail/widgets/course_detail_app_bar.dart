import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/theme/app_colors.dart';

class CourseDetailAppBar extends StatelessWidget {
  final String imageUrl;
  final double expandedHeight;

  const CourseDetailAppBar({
    super.key,
    required this.imageUrl,
    this.expandedHeight = 250,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: expandedHeight,
      pinned: true,
      leading: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColors.accent.withOpacity(0.8),
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.primary,
          ),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(fit: StackFit.expand, children: [
          CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            placeholder: (context, url) => Shimmer.fromColors(
              baseColor: AppColors.primary.withOpacity(0.1),
              highlightColor: AppColors.accent,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.white,
              ),
            ),
            errorWidget: (context, url, error) =>Container(
              color: AppColors.primary.withOpacity(0.1),
              child: const Icon(Icons.error),
            ),
          ),
        ]
        ),
      ),
    );
  }
}
