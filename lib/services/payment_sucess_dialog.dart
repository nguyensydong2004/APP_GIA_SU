import 'package:app_education/core/theme/app_colors.dart';
import 'package:app_education/views/widgets/common/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PaymentSucessDialog extends StatelessWidget {
  const PaymentSucessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.check_circle,
              color: AppColors.primary,
              size: 64,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Payment Sucessful',
              style: Get.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'You can now access the course content',
              style: Get.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                text: 'Start Learning',
                onPressed: () {
                  Get.back();
                  Get.back();
                },
                heigh: 56,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
