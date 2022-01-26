import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeText extends StatelessWidget {
  final String? nText;
  const HomeText({required this.nText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(nText!,style: TextStyle(fontFamily: 'Helvetica Neue',fontSize: 20,fontWeight: FontWeight.w900,color: Colors.grey,letterSpacing: 2),);
  }
}
