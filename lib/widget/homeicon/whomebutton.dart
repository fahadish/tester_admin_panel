import 'package:flutter/material.dart';

class WhomeIconButton extends StatelessWidget {
final Color? colors1;
final bool? IsLoading;
final String? imgName;
final VoidCallback? inOnPressed;
  const WhomeIconButton({required this.inOnPressed,required this.colors1,required this.imgName,this.IsLoading
    ,Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var size =MediaQuery.of(context).size;
    return InkWell(onTap: inOnPressed,

      child: Container(height: size.height *0.2,width: size.width*0.4,
        child: PhysicalModel(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: colors1),
            margin: const EdgeInsets.all(16.0),
            child: Container(
              margin: const EdgeInsets.all(8.0),
              child: Image.asset(imgName!,



                ),
              ),
            ),

        ),
      ),
    );
  }
}
