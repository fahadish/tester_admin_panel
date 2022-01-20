import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tester_admin_panel/widget/menu_widget.dart';
class HomeScreen extends StatelessWidget {
  final urlImages ={
    'Assets/images/1.png'
    'Assets/images/2.png'
    'Assets/images/3.png'

};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
      title: Text('Home'),leading: MenuWidget(),
        actions: [Column(children: [Row(children: [Text('Your Location',),Icon(Icons.location_on,size: 18,)],)],)],
      ),
      body: Container(
        child: SafeArea(child: CarouselSlider.builder(itemCount: urlImages.length, itemBuilder: (context,index,realIndex){

          final urlImage = urlImages[index];
          return buildImage(urlImage,index);

        }, options: ),),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: 12),color: Colors.grey,
  );
}
