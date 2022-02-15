import 'package:flutter/material.dart';
class AddSlider extends StatelessWidget {
final String? slideImage;

  AddSlider(  this.slideImage);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          height: 200,
child: ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image.asset(slideImage!,fit: BoxFit.fill,)),
        ),
      ),
    );
  }
}
