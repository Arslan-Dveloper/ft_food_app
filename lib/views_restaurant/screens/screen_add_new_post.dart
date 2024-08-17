import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:get/get.dart';

class ScreenAddNewPost extends StatelessWidget {
  const ScreenAddNewPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            size: 20,
          ),
        ),
        title: MyText(
          text: "New Post",
          fontSizeText: 23.sp,
          fontweightText: FontWeight.w500,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Get.width,
              height: 276,
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.blackColor.withOpacity(0.05),
                    blurRadius: 20,
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/image add menu.png",
                    scale: 5,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MyText(
                    text: "Select Image",
                    fontweightText: FontWeight.w400,
                    fontSizeText: 14.sp,
                    textColor: AppColor.subHeadingTextColor,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            MyText(
              text: "Title",
              fontSizeText: 20.sp,
              fontweightText: FontWeight.w500,
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              maxLines: 4,
              decoration: InputDecoration(
                  hintText: "Title",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'poppins',
                  )),
            ),
            Spacer(),
            Center(
              child: Container(
                height: 55,
                width: MediaQuery.of(context).size.width * 0.75,
                child: ElevatedButton(
                  onPressed: () {},
                  child: MyText(
                    text: "Post Now",
                    fontweightText: FontWeight.w500,
                    fontSizeText: 16.sp,
                    textColor: AppColor.whiteColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ).symmetricPadding(horizontal: 20),
      ),
    );
  }
}
