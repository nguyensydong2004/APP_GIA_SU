import 'package:app_education/core/theme/app_colors.dart';
import 'package:app_education/services/payment_service.dart';
import 'package:app_education/views/course/payment/widgets/order_summary.dart';
import 'package:app_education/views/course/payment/widgets/payment_fields.dart';
import 'package:app_education/views/widgets/common/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PaymentScreen extends StatefulWidget {
  final String courseId;
  final String courseName;
  final double price;
  const PaymentScreen(
      {required this.courseId,
      required this.courseName,
      required this.price,
      super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final _formKey = GlobalKey<FormState>();
  final _cardNumberController = TextEditingController();
  final _expiryController = TextEditingController();
  final _cvvController = TextEditingController();
  final _nameController = TextEditingController();
  final _errorStyle = const TextStyle(color: Colors.red);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Details',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.primary,
        leading: IconButton(
          onPressed: () => Get.back,
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OrderSummary(
              courseName: widget.courseName,
              price: widget.price,
            ),
            const SizedBox(
              height: 24,
            ),
            PaymentFields(
              formKey: _formKey,
              cardNumberController: _cardNumberController,
              expiryController: _expiryController,
              nameController: _nameController,
              cvvController: _cvvController,
              errorStyle: _errorStyle,
            ),
            const SizedBox(
              height: 32,
            ),
            CustomButton(
              text: 'Pay \$${widget.price}',
              onPressed: () => PaymentService.processPayment(
                formKey: _formKey,
                courseId: widget.courseId,
              ),
              isLoading: false,
              heigh: 56,
            ),
          ],
        ),
      ),
    );
  }
}
