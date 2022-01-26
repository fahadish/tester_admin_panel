import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:tester_admin_panel/views/OrderScreen/order_screen.dart';

class WhomeIconButton extends StatelessWidget {
  final VoidCallback? inOnPressed;
  final Color? colors1;
  final String? imgName;

  const WhomeIconButton({
    required this.inOnPressed,
    required this.colors1,
    required this.imgName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      width: size.width * 0.4,
      child: InkWell(
        onTap: () {
          Get.to(OrderScreen());
        },
        child: PhysicalModel(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            decoration: BoxDecoration(
                color: colors1,
                borderRadius: BorderRadius.all(Radius.circular(20))),

            margin: const EdgeInsets.all(16.0),
            child: Container(
              margin: const EdgeInsets.all(16.0),
              child: Image.asset(
                imgName!,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
