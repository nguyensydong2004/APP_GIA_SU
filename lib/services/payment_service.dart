import 'package:app_education/services/dummy_data_service.dart';
import 'package:app_education/services/payment_sucess_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PaymentService {
  static void processPayment({
    required GlobalKey<FormState> formKey,
    required String courseId,
  }) {
    if (formKey.currentState!.validate()) {
      Get.dialog(
        const Center(
          child: CircularProgressIndicator(),
        ),
        barrierDismissible: false,
      );
      //simulate payment processing
      Future.delayed(const Duration(seconds: 2), () {
        Get.back();

        // add the course to purchased courses|
        DummyDataService.addPurchasedCourse(courseId);

        Get.dialog(
          const PaymentSucessDialog(),
          barrierDismissible: false,
        );
      });
    }
  }
}
