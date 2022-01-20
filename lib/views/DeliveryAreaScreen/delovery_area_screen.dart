import 'package:flutter/material.dart';
import 'package:tester_admin_panel/widget/menu_widget.dart';
class DeliveryAreaScreen extends StatelessWidget {
  const DeliveryAreaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,appBar: AppBar(leading: MenuWidget(),title: Text('Delivery'),backgroundColor: Colors.blue),
    );
  }
}
