import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:tester_admin_panel/views/OrderScreen/map_utils.dart';
import 'package:tester_admin_panel/views/OrderScreen/order_data_table.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map_launcher/map_launcher.dart';

class OrderDetails extends StatefulWidget {

  OrderDetails({Key? key}) : super(key: key);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  var height, width;

  final _number = '03112233445';
  @override
  void initState() {
    _number;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Order Details',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 5,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                 height: height * 0.07,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    border: Border.all(color: Colors.black,width: 0.1)),
                child: Center(
                  child: Text(
                    'Order#004',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(height: height*0.01,),
              Container(
                child: Row(
                  children: [
                    Container(
                      // height: height * 0.1,
                      width: width/2,

                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            // margin: EdgeInsets.only(),
                            child: Column(

                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row( mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Order Date: ',
                                      ),
                                      Text(
                                        '2022-01-04',
                                        style: TextStyle(fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                               const SizedBox(height: 5,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Order Time: ',
                                      ),
                                      Text('12:17:38',
                                          style: TextStyle(fontWeight: FontWeight.w600))
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 5,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Location: ',
                                      ),
                                      Text('Lahore, Pakistan',maxLines: 2,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                          ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                        // height: height * 0.1,
                        width: width/2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Name: ',
                                  ),
                                  Text(
                                    'Umer',
                                    style: TextStyle(fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Email: ',
                                  ),
                                  Text('Umer@gmail.com',maxLines: 2,
                                      style: TextStyle(fontWeight: FontWeight.w600)),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Phone: ',
                                  ),
                                  Text('03112233445',maxLines: 2,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ))
                                ],
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
SizedBox(height: height*0.01,),
                  Container(height: height*0.30,width: width,
                      // height: height*0.35,width: width*0.9,
                      child: OrderDataTable()),
              Divider(thickness: .5,),
SizedBox(height: height*0.15,),
              // Container(
              //     child: ElevatedButton.icon(
              //       icon: Icon(
              //         Icons.pending_actions,
              //         color: Colors.white,
              //         size: 14.0,
              //       ),
              //       label: Text('Pending',style: TextStyle(letterSpacing: 1),),
              //       onPressed: () {},
              //       style: ElevatedButton.styleFrom(primary: Color(0xffD9005E),
              //         shape: new RoundedRectangleBorder(
              //           borderRadius: new BorderRadius.circular(10.0),
              //         ),
              //       ),
              //     )),
              SizedBox(height: height*0.05,)
              ,Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Container(
                        child: ElevatedButton.icon(
                          icon: Icon(
                            Icons.pending_actions,
                            color: Colors.white,
                            size: 14.0,
                          ),
                          label: Text('Pending',style: TextStyle(letterSpacing: 1),),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(primary: Color(0xffD9005E),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                        )),

                  Container(
                    child:ElevatedButton.icon(
                      icon: Icon(
                        Icons.call,
                        color: Colors.white,
                        size: 14.0,
                      ),
                      label: Text('Call'),
                      onPressed: () {FlutterPhoneDirectCaller.callNumber(_number);},

                      //

                      style: ElevatedButton.styleFrom(primary: Colors.green,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                    )),
                  Container(
                      child: ElevatedButton.icon(
                        icon: Icon(
                          Icons.location_on,
                          color: Colors.white,
                          size: 14.0,
                        ),
                        label: Text('Location',style: TextStyle(letterSpacing: 1),),
                        onPressed: () {MapUtils.openMap(31.582045, 74.329376);
                            // MapUtils.openMap(31.582045, 74.329376);
                        },
                        style: ElevatedButton.styleFrom(primary: Colors.amberAccent,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                        ),
                      )),
              ],),)
            ],
          ),
        ),
      ),
    );
  }
}
