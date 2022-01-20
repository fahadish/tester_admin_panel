import 'package:flutter/material.dart';
import 'package:tester_admin_panel/widget/menu_widget.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.lightGreen,
      appBar: AppBar(title: Text('Profile'),leading: MenuWidget(),backgroundColor: Colors.lightGreen),);
  }
}
