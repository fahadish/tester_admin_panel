// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class SignupController extends GetxController{
//
//   final GlobalKey<FormState>signUpFormKey = GlobalKey<FormState>();
//   late TextEditingController emailController,passwordController,nameController;
//   var name = '';
//   var email = '';
//   var password = '';
//
//   @override
//   void onInit() {
//
//     super.onInit();
//     nameController= TextEditingController();
//     emailController = TextEditingController();
//     passwordController = TextEditingController();
//   }
//   @override
//   void onClose() {
//     nameController.dispose();
//     emailController.dispose();
//     passwordController.dispose();
//   }
//   String? validateName(String value){
//     if(!GetUtils.isAlphabetOnly(value)){
//       return "provide valid Name";
//     }
//     return null;
//   }
//
//   String? validateEmail(String value){
//     if(!GetUtils.isEmail(value)){
//       return "provide valid Email";
//     }
//     return null;  }
//
//   String? validatePassword(String value){
//     if(value.length<=6){
//       return "Invalid Password";
//     }
//     return null;
//   }
//
//   void checkLogin(){
//     final  isValid=signUpFormKey.currentState!.validate();
//     if(!isValid){
//       return;
//     }
//
//     signUpFormKey.currentState!.save();
//   }
//
// }