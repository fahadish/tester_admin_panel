import 'package:flutter/material.dart';
class SignUpButton extends StatelessWidget {
final String? inputText;
final VoidCallback? inOnPressed;


  const SignUpButton({Key? key, required this.inputText,required this.inOnPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 50,right: 50),
      alignment: Alignment.center,
      child: SizedBox(
        width: 325,
        height: 40 ,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.transparent,elevation: 0,),
          onPressed: inOnPressed,child:  Text(inputText!,style: const TextStyle(fontSize: 14,letterSpacing: 3,fontWeight: FontWeight.w400),
        ),),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
              colors: [Colors.black,Colors.grey],
          )
      ),

    );
  }
}
