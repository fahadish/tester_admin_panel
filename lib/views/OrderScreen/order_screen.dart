import 'package:flutter/material.dart';
import 'package:tester_admin_panel/widget/menu_widget.dart';
class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.yellow,appBar: AppBar(leading: MenuWidget(),title: Text('Order'),),);
  }
}
