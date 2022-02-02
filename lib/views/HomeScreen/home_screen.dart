import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tester_admin_panel/views/DeliveryAreaScreen/delovery_area_screen.dart';
import 'package:tester_admin_panel/views/OrderScreen/order_screen.dart';
import 'package:tester_admin_panel/views/ProfileScreen/ProfileScreen.dart';
import 'package:tester_admin_panel/views/ViewListing/view_Listing_screen.dart';
import 'package:tester_admin_panel/widget/homeicon/home_text.dart';
import 'package:tester_admin_panel/widget/homeicon/whomebutton.dart';
import 'package:tester_admin_panel/widget/menu_widget.dart';

final List<String>? imagesList = [

  'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'
'https://images.unsplash.com/photo-1643018987067-17aafb8890ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: Text('Home'),
        leading: MenuWidget(),
        actions: [
          Center(
            child: Center(
              child: Column(
                children: [
                  Row(
                    children: const [],
                  )
                ],
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              initialPage: 2,
              autoPlay: true,
                ),
                items: imagesList
                ?.map((e) => ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.network(
                            e,
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ))
                .toList(),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WhomeIconButton(inOnPressed: (){Get.to(OrderScreen());},
                    imgName: 'Assets/images/shopping-cart.png',
                    colors1: Colors.green.withOpacity(0.4),
                  ),
                  WhomeIconButton(inOnPressed: (){Get.to(ProfileScreen());},
                      imgName: 'Assets/images/man.png',
                      colors1: Color(0xff133BBE).withOpacity(0.4))
                ],
              ),
              SizedBox(
                height: size.height * .03,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      HomeText(
                        nText: 'ORDERS',
                      ),
                      HomeText(nText: 'PROFILE')
                    ],
                  )
                ],
              ),
              SizedBox(
                height: size.height * .03,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WhomeIconButton(inOnPressed: (){Get.to(DeliveryAreaScreen());},
                          imgName: 'Assets/images/location.png',
                          colors1: Colors.yellow.withOpacity(0.4)),
                      WhomeIconButton(inOnPressed: (){Get.to(ViewListingScreen());},
                          imgName: 'Assets/images/package.png',
                          colors1: Color(0xffB90E0A).withOpacity(0.4))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: size.height * .03,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      HomeText(nText: 'LOCATION'),
                      HomeText(nText: 'LISTING')
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
