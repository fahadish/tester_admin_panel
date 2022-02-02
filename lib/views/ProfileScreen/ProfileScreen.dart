import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tester_admin_panel/controller/image_contoller.dart';
import 'package:tester_admin_panel/controller/profile%20controller.dart';
import 'package:tester_admin_panel/widget/WsignUpButton/w_signup_button.dart';
import 'package:tester_admin_panel/widget/feilds/dropdownfield.dart';
import 'package:tester_admin_panel/widget/menu_widget.dart';

class ProfileScreen extends GetView<ProfileController> {
  ImageController _imageController = Get.put(ImageController());
  File? pickImage;
  ImagePicker imagePicker = ImagePicker();

  final ProfileController _profileController = Get.put(ProfileController());

  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text('Profile',style: TextStyle(color: Colors.black),),   iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Column(
          children: [            Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Helvetica Neue',
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ))),
            MyTextFeild(
                Mycontroller: controller.emailController,
                labelText: 'Name',
                MyIcon: Icon(Icons.face)),
            MyTextFeild(labelText: 'Email', MyIcon: Icon(Icons.mail_outline)),
            MyTextFeild(
                labelText: 'Phone Number', MyIcon: Icon(Icons.phone_rounded)),
            Container(height: size.height*0.05,width: size.width*0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                children: [Text('City',style: TextStyle(fontWeight: FontWeight.w600),), Text('Area',style: TextStyle(fontWeight: FontWeight.w600),)],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    child: PhysicalModel(
                        color: Colors.white,
                        shadowColor: Colors.black,
                        elevation: 5,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: size.height * 0.01,
                                horizontal: size.width * 0.05),
                            child: Row(
                              children: [MyDropDownField()],
                            )))),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    child: PhysicalModel(
                        color: Colors.white,
                        shadowColor: Colors.black,
                        elevation: 5,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: size.height * 0.01,
                                horizontal: size.width * 0.05),
                            child: Row(
                              children: [MyDropDownField()],
                            )))),
              ],
            ),
            Container(height: size.height*0.05,width: size.width*0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Opeining Time',style: TextStyle(fontWeight: FontWeight.w600),), Text('Closing Time',style: TextStyle(fontWeight: FontWeight.w600),)],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    child: PhysicalModel(
                        color: Colors.white,
                        shadowColor: Colors.black,
                        elevation: 5,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: size.height * 0.01,
                                horizontal: size.width * 0.05),
                            child: Row(
                              children: [MyDropDownField()],
                            )))),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    child: PhysicalModel(
                        color: Colors.white,
                        shadowColor: Colors.black,
                        elevation: 5,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: size.height * 0.01,
                                horizontal: size.width * 0.05),
                            child: Row(
                              children: [MyDropDownField()],
                            )))),
              ],
            ),
            MyTextFeild(
              labelText: 'WebSite',
              MyIcon: Icon(Icons.language),
            ),
            MyTextFeild(labelText: 'Facebook', MyIcon: Icon(Icons.facebook)),
            MyTextFeild(labelText: 'Twitter'),
            MyTextFeild(labelText: 'Linkedin'),
            MyTextFeild(labelText: 'Youtube'),
            MyTextFeild(labelText: 'Google'),
            SizedBox(height: size.height*0.02,),
            SignUpButton(inputText: 'Update Profile', inOnPressed: (){}),
            SizedBox(height: size.height*0.02,),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Change Password',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Helvetica Neue',
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ))),
            MyTextFeild(labelText: 'Password',MyIcon: Icon(Icons.lock)),
            MyTextFeild(labelText: 'New Password',MyIcon: Icon(Icons.lock_open)),
            MyTextFeild(labelText: 'Confirm Password',MyIcon: Icon(Icons.lock_open_rounded)),
            SizedBox(height: size.height*0.02,),
            SignUpButton(inputText: 'Change Password', inOnPressed: () {}),
            SizedBox(height: size.height*0.02,),
            // // SizedBox(
            // //   height: size.height * 0.02,
            // // ),
            // // Obx(() {
            // //   return CircleAvatar(
            // //     backgroundImage: _imageController.isProfPicPathSet.value == true
            // //         ? FileImage(File(_imageController.profilePicPath.value))
            // //             as ImageProvider
            // //         : AssetImage('Assets/images/man-890885 (2).jpg'),
            // //     radius: 80,
            // //   );
            // // }),
            // // SignUpButton(
            // //     inputText: 'Upload Logo',
            // //     inOnPressed: () => takePhoto(ImageSource.gallery)),
            // // SizedBox(
            // //   height: size.height * 0.05,
            // ),
          ],
        ),
      ),
    );
  }

  Padding MyTextFeild({
    TextEditingController? Mycontroller,
    required String? labelText,
    Icon? MyIcon,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: PhysicalModel(
        color: Colors.white,
        shadowColor: Colors.black,
        elevation: 8,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                border: InputBorder.none,
                labelText: labelText,
                prefixIcon: MyIcon,
              ),
              keyboardType: TextInputType.emailAddress,
              controller: Mycontroller,
              onSaved: (value) {
                _profileController.name = value!;
              },
              validator: (value) {
                return controller.validateEmail(value!);
              }),
        ),
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedImage =
        await imagePicker.pickImage(source: source, imageQuality: 100);
    var pickedFile = File(pickedImage!.path);
    _imageController.setProfileImagePath(pickedFile.path);
  }
}
