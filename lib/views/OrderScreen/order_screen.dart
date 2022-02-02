// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tester_admin_panel/controller/order_controller.dart';
import 'package:tester_admin_panel/views/OrderScreen/orderDetails.dart';
import 'package:tester_admin_panel/widget/menu_widget.dart';

class OrderScreen extends StatelessWidget {
  OrderScreen({Key? key}) : super(key: key);
  var height, width;
  OrderController _orderController = Get.put(OrderController());

  @override
  Widget build(BuildContext context,) {
    height = MediaQuery
        .of(context)
        .size
        .height;
    width = MediaQuery
        .of(context)
        .size
        .width;
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'My Orders',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(10),
          child: Column(
            children: [
              Row(children: [
                Obx(() {
                  return ToggleButtons(fillColor: Colors.pink.shade200,
                    selectedColor: Colors.white,
                    splashColor: Colors.grey,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: GestureDetector(
                            child: Text('All')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Pendding'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Completed'),
                      ),
                    ],
                    isSelected: _orderController.isSelected,
                    onPressed: (int newIndex) {
                      _orderController.toggle(newIndex);
                    },
                  );
                })
              ],),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return getMyOrdersContainer();
                    }),
              ),

              SizedBox(
                height: size.height * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }


  getMyOrdersContainer() {
    return Column(
      children: [
        InkWell(onTap: (){Get.to(OrderDetails());},
          child: Container(
            width: width * 0.90,
            height: height * 0.18,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: height * 0.23,
                    width: width * 0.30,
                    decoration: BoxDecoration(
                        color: Colors.pink.shade200,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset('Assets/images/fm.png'),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Fahad',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const Text('FahadIshfaq45@gmil.com'),
                    const Text('03122643535'),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 36),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Rs: ',
                              style: TextStyle(color: Colors.red, fontSize: 18)),
                          TextSpan(text: '3000', style: TextStyle(fontSize: 18))
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: height * 0.02,
        )
      ],
    );
  }
}
