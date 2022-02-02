import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tester_admin_panel/controller/view_listing.dart';

class ViewListingScreen extends StatelessWidget {

  List<String> imageList = [
    'https://cdn.pixabay.com/photo/2019/03/15/09/49/girl-4056684_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/15/16/25/clock-5834193__340.jpg',
    'https://cdn.pixabay.com/photo/2020/09/18/19/31/laptop-5582775_960_720.jpg',
    'https://media.istockphoto.com/photos/woman-kayaking-in-fjord-in-norway-picture-id1059380230?b=1&k=6&m=1059380230&s=170667a&w=0&h=kA_A_XrhZJjw2bo5jIJ7089-VktFK0h0I4OWDqaac0c=',
    'https://cdn.pixabay.com/photo/2019/11/05/00/53/cellular-4602489_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/02/12/10/29/christmas-2059698_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/01/29/17/09/snowboard-4803050_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/02/06/20/01/university-library-4825366_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/11/22/17/28/cat-5767334_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/13/16/22/snow-5828736_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/09/09/27/women-5816861_960_720.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,elevation: 5,iconTheme: IconThemeData(color: Colors.black),
          title: Text('view Listing',style: TextStyle(color: Colors.black),),
        ),
        body: SafeArea(


          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Available Products:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
              Expanded(
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 1.0,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 10),
                    itemCount: imageList.length,
                    itemBuilder: (context, index) => myGridListingContainer()),
              ),
            ],
          ),
        ));
  }

  Widget myGridListingContainer() {
    final _viewListingController = ViewListingController();
    return Padding(
      padding: EdgeInsets.all(5),
      child: PhysicalModel(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        elevation: 5,
        shadowColor: Colors.black,
        child: Container(
          height: 50,
          width: 50,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('Assets/images/img.jpg')),
                  ), Positioned(right: 10,
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.black.withOpacity(0.4)  ),
                      child: IconButton(
                        onPressed: () {
                          _viewListingController.myIsLike();
                        },
                        icon: Obx(() {
                          return Icon(_viewListingController.isLike.value ?
                          Icons.favorite_border : Icons.favorite,
                              color: _viewListingController.isLike.value
                                  ? Colors.white
                                  : Colors.pink
                          );
                        }),
                        iconSize: 30,
                        color: Colors.green,
                        splashColor: Colors.pink,
                      ),
                    ),
                  ),

                  // Text(
                  //   'Rs.2000',
                  //   style: TextStyle(fontWeight: FontWeight.bold),
                  // ),

                ],
              ),Spacer(),
            Text('Pizza For You'),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('2500',style: TextStyle(color: Colors.pink),),
            )
            ],
          ),
        ),
      ),
    );
  }
}
