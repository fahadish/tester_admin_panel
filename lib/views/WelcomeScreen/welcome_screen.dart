import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tester_admin_panel/views/LoginScreens/login_screen.dart';
import 'package:tester_admin_panel/views/SignUpScreen/signup_screen.dart';
import 'package:tester_admin_panel/widget/WsignUpButton/w_signup_button.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 1000),
      initialRoute: '/',
      getPages: [
GetPage(name: '/', page: ()  => WelcomeScreen() ),
         GetPage(name: '/LoginScreen', page: () =>  LoginScreen() ),
        GetPage(name: '/SignUpScreen', page: ()=>  SignUpScreen()),
      ],

      home: Container(color: Colors.white,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget> [
          Column(
            children:<Widget> [
              Image.asset('Assets/images/Taster PNG.png',alignment: Alignment.topCenter,),
              Padding(padding: const EdgeInsets.all(20),child:
              Text('Welcome To Admin Panel ',style: GoogleFonts.ubuntu(textStyle: const TextStyle(fontSize: 30,
                color: Colors.grey,fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
              ))),
              ),
              const SizedBox(height: 350,),
         SignUpButton(inputText: 'LogIn', inOnPressed: (){Get.to(LoginScreen());}),
   const SizedBox(height: 20,),
              SignUpButton(inputText: 'Register', inOnPressed: () { Get.to( SignUpScreen()); },),
              const SizedBox(height: 20,)

            ],
          )
        ],
      ),
      ),

    );
  }
}

