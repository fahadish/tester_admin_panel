import 'package:flutter/material.dart';
import 'package:tester_admin_panel/widget/menu_widget.dart';
class MainDashBoard extends StatelessWidget {
  const MainDashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: MenuWidget(),
        backgroundColor: Colors.pink,title: Text('Taster',textAlign: TextAlign.center,),
      automaticallyImplyLeading: false,
      ),
    );
  }
}
