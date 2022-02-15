import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  final GlobalKey<FormState>loginFormKey = GlobalKey<FormState>();
  late TextEditingController emailController,passwordController;
  var email = '';
  var password = '';
  @override
  void onInit() {

    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }
  @override
  void onClose() {
   emailController.dispose();
   passwordController.dispose();
  }
String? validateEmail(String value){
if(!GetUtils.isEmail(value)){
  return "provide valid email";
}
return null;
}

  String? validatePassword(String value){
    if(value.length<=6){
      return "Invalid Password";
    }
    return null;
  }

  void checkLogin(){
    final  isValid=loginFormKey.currentState!.validate();
    if(!isValid){
      return;
    }

    loginFormKey.currentState!.save();
  }

}