import 'package:flutter/material.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LayoutProfile extends StatelessWidget {
  const LayoutProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 150,
                    height: 150,
                    child: Image.asset("assets/images/profile two.png"),
                  ),
                ),
                Center(
                  child: Text(
                    "Change",
                    style: TextStyle(
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  "Name",
                  style: TextStyle(
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w700,
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Alexa Jhons",
                    hintStyle: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: AppColor.textColor.withOpacity(0.7)),
                    suffixIcon: Image.asset(
                      "assets/images/Pen.png",
                      scale: 4,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Email ID",
                  style: TextStyle(
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w700,
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "alexa@foodit.com",
                    hintStyle: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: AppColor.textColor.withOpacity(0.7)),
                    suffixIcon: Image.asset(
                      "assets/images/Pen.png",
                      scale: 4,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Phone no.",
                  style: TextStyle(
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w700,
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "+39 01234567",
                    hintStyle: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: AppColor.textColor.withOpacity(0.7)),
                    suffixIcon: Image.asset(
                      "assets/images/Pen.png",
                      scale: 4,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
