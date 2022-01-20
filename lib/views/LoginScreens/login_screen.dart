import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(padding: EdgeInsets.all(25),
        color: Colors.white,
        width: double.infinity,
        alignment: Alignment.center,
        child: Form(child: Column(
          children:<Widget>[TextFormField(
            decoration: InputDecoration(border: OutlineInputBorder()

            ),
          ),
          ],
        )),
    );
  }
}
