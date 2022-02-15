
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tester_admin_panel/core_providers.dart';
import 'package:tester_admin_panel/models/banner_model/banner_model.dart';
import 'package:provider/provider.dart';
import 'package:tester_admin_panel/models/listing_model/ListingModel.dart';
class HomeController extends GetxController{


    }
class ControllerRepo{
  Dio? dio;
  ControllerRepo(){
    BaseOptions options=BaseOptions(
        baseUrl: "https://www.taster.pk/api/",
        receiveDataWhenStatusError: true,
        connectTimeout: 60*1000,
        receiveTimeout: 60*1000
    );
    dio=new Dio(options);
  }

  Future<BannerModel?> getBanners(BuildContext context) async {
    try{
      //var body=FormData.fromMap({
      // });
      final response= await dio!.post("app/banners?app_key=c730e2d7b6f74a2c663d4cd748a7cad5&access_token=303053249&user_id=1625",);
      print(response.statusCode);
      if(response.statusCode==200){
        if(response.data['status_code']==200){
          print('okkk');
          print(response);
          context.read<CoreProviders>().bannerModel=BannerModel.fromJson(response.data);
          return context.read<CoreProviders>().bannerModel;
        }
        // else if(response.data['status']==401){
        //   print("${response.data['status']}:${response.data['message']}");
        //   return null;
        // }
        return null;
      }

    }on DioError catch(e){
      print(e.toString());
    }
  }
  Future<ProductListingModel?> getProductListing(BuildContext context) async {
    try{
      //var body=FormData.fromMap({
      // });
      final response= await dio!.post("app/myads?app_key=c730e2d7b6f74a2c663d4cd748a7cad5&access_token=303053249&user_id=1625",);
      print(response.statusCode);
      if(response.statusCode==200){
        if(response.data['status_code']==200){
          print('okkk');
          print(response);
          context.read<CoreProviders>().productListingModel=ProductListingModel.fromJson(response.data);
          return context.read<CoreProviders>().productListingModel;
        }
        // else if(response.data['status']==401){
        //   print("${response.data['status']}:${response.data['message']}");
        //   return null;
        // }
        return null;
      }

    }on DioError catch(e){
      print(e.toString());
    }
  }
}
