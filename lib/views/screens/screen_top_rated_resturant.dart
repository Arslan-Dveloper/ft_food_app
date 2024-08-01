import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller/app_controller.dart';
import 'package:ft_food_app/views/layouts/item_top_rated.dart';
import 'package:get/get.dart';

class ScreenTopRatedResturant extends StatelessWidget {
  const ScreenTopRatedResturant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppControllerApp());
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Top Rated",
          style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 23.sp,
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 430,
                width: Get.width,
                child: ListView.builder(
                  itemCount: controller.imageTWo.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ItemTopRated(
                      controller: controller,
                      index: index,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
