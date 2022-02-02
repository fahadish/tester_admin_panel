import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ViewListingController extends GetxController{
  var isLike = true.obs;
  void myIsLike(){
    if(isLike.isTrue){
      isLike.toggle();
    }else{
      isLike.value = true;
    }
  }

}