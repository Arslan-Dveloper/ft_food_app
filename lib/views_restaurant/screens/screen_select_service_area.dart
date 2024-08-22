import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ScreenSelectServiceArea extends StatelessWidget {
  const ScreenSelectServiceArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Column(children: [
            TextFormField().symmetricPadding(horizontal: 20),
            SizedBox(
              height: 30,
            )
          ]),
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
        title: MyText(
          text: "Restaurant Location",
          fontSizeText: 23.sp,
          fontweightText: FontWeight.w500,
          textColor: AppColor.textColor,
        ),
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: AppColor.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
      ),
      body: GoogleMap(
        initialCameraPosition:
            CameraPosition(target: LatLng(30.9693, 70.9428), zoom: 14),
      ),
    );
  }
}
