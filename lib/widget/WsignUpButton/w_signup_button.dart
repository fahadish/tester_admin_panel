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
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.transparent,elevation: 0,),
          onPressed: inOnPressed,child:  Text(inputText!,style: const TextStyle(fontSize: 14,letterSpacing: 3,fontWeight: FontWeight.w400),
        ),),
      ),
      decoration: BoxDecoration(color: const Color(0xffD9005E),
          borderRadius: BorderRadius.circular(50),

      ),

    );
  }
}
