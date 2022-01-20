import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tester_admin_panel/controller/signup_controller.dart';
import 'package:tester_admin_panel/widget/WsignUpButton/w_signup_button.dart';

class SignUpScreen extends GetView<SignupController> {
  SignUpScreen({Key? key}) : super(key: key);
  bool obscurePassword = true;
  final SignupController _loginController = Get.put(SignupController());
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
              key: _loginController.signUpFormKey,
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
                  Text('Welcome To Registration ',
                      style: GoogleFonts.ubuntu(
                          textStyle: const TextStyle(
                            fontSize: 30,
                            color: Color(
                              0xffd9005e,
                            ),
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
                      labelText: 'Name',
                      prefixIcon: const Icon(Icons.face),
                    ),
                    keyboardType: TextInputType.name,controller: controller.nameController,onSaved: (value){
                    _loginController.name =value!;
                  },
                    validator: (value){
                      return controller.validateName(value!);
                    },

                  ),

                  SizedBox(height: 20,),




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
                              color: const Color(0xffd9005e),
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
                    _loginController.checkLogin();
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
