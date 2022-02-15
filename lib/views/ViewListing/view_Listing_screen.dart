import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tester_admin_panel/core_providers.dart';

class ViewListingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,
          elevation: 5,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text('view Listing', style: TextStyle(color: Colors.black),),
        ),
        body: SafeArea(


          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Available Products:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            ),
              Expanded(
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: context.read<CoreProviders>().productListingModel!.data!.ads!.length,
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 250,
                        childAspectRatio: 1.0,
                        crossAxisSpacing: 6,
                        mainAxisSpacing: 2),
                    itemBuilder: (context, index) =>
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: PhysicalModel(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            elevation: 5,
                            shadowColor: Colors.black,
                            child: Container(


                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height: size.height*0.14,
                                        width: size.width,
                                        margin: EdgeInsets.all(10),
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage('${context.read<CoreProviders>().productListingModel!.data!.ads![index].adImage}')
                                            )
                                        ),
                                      )],
                                  ), const Spacer(),
                                  Text('${context.read<CoreProviders>().productListingModel!.data!.ads![index].adName}'),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Rs ${context.read<CoreProviders>().productListingModel!.data!.ads![index].adPrice}', style: TextStyle(color: Colors.pink),),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                  )
              )
              ,
            ],
          ),
        ));
  }
}
