// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart'hide Router;
// import 'package:tester_admin_panel/models/banner_model/banner_model.dart';
// class CarouselSliderDataFound extends StatefulWidget {
//
//  final  List<Carousel> bannerList;
//
//    CarouselSliderDataFound(this.bannerList);
//
//   @override
//   _CarouselSliderDataFoundState createState() => _CarouselSliderDataFoundState();
// }
//
// class _CarouselSliderDataFoundState extends State<CarouselSliderDataFound> {
//
//   int _current = 0;
//   List<Widget>?imageSlider;
//
//   @override
//   void initState() {
//     imageSlider = widget.bannerList.map((e)  => Container(
//       margin: EdgeInsets.all(10),
//       child: ClipRRect(
//         borderRadius: BorderRadius.all(Radius.circular(10 )),
//         child: Stack(children: [
//             CachedNetworkImage(imageUrl: e.image.toString(),
//             errorWidget: (context, url ,error)=>
//               Icon(Icons.error),
//               progressIndicatorBuilder: (context , url, downloadProgress)=>
//                   Center(
//                     child: CircularProgressIndicator(
//                       value: downloadProgress.progress ,
//                     ),
//                   ),fit: BoxFit.cover,
//               width: 1000,
//
//
//             ),Positioned(bottom: 0,
//           left: 0,
//           right: 0,child: Container(padding: EdgeInsets.all(10),child: Text('Some Text'),),)
//         ],),
//       ),
//     )).toList();
//     super.initState();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           CarouselSlider(items: imageSlider, options: CarouselOptions(
//             autoPlay: true,enlargeCenterPage: true,
//             aspectRatio: 16/9,viewportFraction: 1,
//             onPageChanged: (index , reason){
//               setState(() {
//                 _current = index;
//               });
//             }
//           )),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//
//           )
//         ],
//       ),
//     );
//   }
// }
