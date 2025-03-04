import 'package:app_education/core/utils/validator.dart';
import 'package:app_education/main.dart';
import 'package:app_education/routes/app_routes.dart';
import 'package:app_education/views/widgets/common/custom_button.dart';
import 'package:app_education/views/widgets/common/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleLogin() {
    if (_formkey.currentState!.validate())
      //handle login logic here
      Get.offAllNamed(AppRoutes.main);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //top wave design
            Container(
              height: size.height * 0.3,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).primaryColor,
                      Theme.of(context).primaryColor.withOpacity(0.8),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                  )),
              child: const Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.school,
                          size: 50,
                          color: Colors.white,
                        ),
                        SizedBox(height: 100),
                        Text(
                          'Welcom Back!',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  //email field
                  Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        CustomTextfield(
                            label: 'Email',
                            prefixIcon: Icons.email_outlined,
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            validator: FormValidator.validateEmail),
                        // const SizedBox(height: 20),
                        // CustomTextfield(
                        //     label: 'Password',
                        //     prefixIcon: Icons.lock_outline,
                        //     controller: _passwordController,
                        //     obscureText: true,
                        //     validator: FormValidator.validatePassword),
                        // const SizedBox(height: 20),
                        // TextFormField(
                        //   decoration: InputDecoration(
                        //     labelText: 'Email',
                        //     prefixIcon: const Icon(Icons.email_outlined),
                        //     border: OutlineInputBorder(
                        //       borderRadius: BorderRadius.circular(10),
                        //     ),
                        //     enabledBorder: OutlineInputBorder(
                        //       borderRadius: BorderRadius.circular(10),
                        //       borderSide: BorderSide(
                        //         color: Colors.grey.shade300,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        const SizedBox(height: 20),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: const Icon(Icons.lock_outline),
                            suffixIcon: const Icon(Icons.visibility_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.grey.shade300,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        //Forgot password
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () =>
                                Get.offAllNamed(AppRoutes.forgotPassword),
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        //login button
                        CustomButton(
                          text: 'Login',
                          onPressed: _handleLogin,
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),

                  //social login
                  Row(
                    children: [
                      Expanded(
                        child: Divider(color: Colors.grey.shade300),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  //social login buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _socialLoginButton(
                        icon: Icons.g_mobiledata,
                        onPressed: () {},
                      ),
                      _socialLoginButton(
                        icon: Icons.facebook,
                        onPressed: () {},
                      ),
                      _socialLoginButton(
                        icon: Icons.apple,
                        onPressed: () {},
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't Have an account?"),
                      TextButton(
                        onPressed: () => Get.toNamed(AppRoutes.register),
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _socialLoginButton({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return CustomButton(
      icon: icon,
      isFullWidth: false,
      heigh: 50,
      text: '',
      onPressed: onPressed,
      isOutlined: true,
    );
  }
}
