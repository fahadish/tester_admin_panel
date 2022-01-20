import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tester_admin_panel/controller/login_controller.dart';
import 'package:tester_admin_panel/views/DashboardScreen/dashboard_screen.dart';
import 'package:tester_admin_panel/widget/WsignUpButton/w_signup_button.dart';

class LoginScreen extends GetView<LoginController> {
  LoginScreen({Key? key}) : super(key: key);
  bool obscurePassword = true;
final LoginController _loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          width: context.width,
          height: context.height,
          child: SingleChildScrollView(
            child: Form(
              key: _loginController.loginFormKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  Image.asset(
                    'Assets/images/Taster PNG.png',
                    alignment: Alignment.topCenter,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text('Welcome To Login ',
                      style: GoogleFonts.ubuntu(
                          textStyle: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        decoration: TextDecoration.none,
                      ))),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'Email',
                        prefixIcon: const Icon(Icons.email),
                      ),
                      keyboardType: TextInputType.emailAddress,controller: controller.emailController,onSaved: (value){
                    _loginController.email =value!;
                  },
                    validator: (value){
                        return controller.validateEmail(value!);
                    },

                  ),

                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'Password',
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              obscurePassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey,
                            ))),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    controller: _loginController.passwordController,onSaved: (value){
                    _loginController.password =value!;
                  },
                    validator: (value){
                      return _loginController.validatePassword(value!);
                    },

                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SignUpButton(inputText: 'Login', inOnPressed: () {
                    Get.to(DashBoardScreen());
                    // _loginController.checkLogin();
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
