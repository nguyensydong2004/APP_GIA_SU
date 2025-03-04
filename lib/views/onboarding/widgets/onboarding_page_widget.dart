import 'package:app_education/core/theme/app_colors.dart';
import 'package:app_education/models/onboarding_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OnboardingPageWidget extends StatelessWidget {
  final OnboardingItem page;
  const OnboardingPageWidget({
    super.key,
    required this.page,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //image
            Container(
              height: Get.height*0.4,
              padding: const EdgeInsets.all(32),
              child: Image.asset(
                page.image,
                fit:BoxFit.contain,
              ),
            ),

            const SizedBox(height: 40),
            //title
            Text(
              page.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // decription
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                page.description,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
                letterSpacing: 1.5,
              ),
              textAlign: TextAlign.center,
                ),
            ),
          ],
        ),
      ),
    );
  }
}