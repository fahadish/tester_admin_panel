import 'package:flutter/material.dart';
import 'package:tester_admin_panel/widget/menu_widget.dart';
class ViewListingScreen extends StatelessWidget {
  const ViewListingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.purpleAccent,appBar: AppBar(backgroundColor: Colors.purpleAccent,
      leading: MenuWidget(),title: Text('View Listing'),),);
  }
}
