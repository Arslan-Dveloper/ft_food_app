import 'package:flutter/material.dart';
import 'package:ft_food_app/controller/app_controller.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'layout_post_near_me.dart';

class LayoutPost extends StatelessWidget {
  const LayoutPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppControllerApp());
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.blackColor.withOpacity(0.1),
                      blurRadius: 25,
                      spreadRadius: 0,
                      offset: Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
                child: TabBar(
                  labelStyle: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelColor: AppColor.blackColor,
                  dividerColor: Colors.transparent,
                  indicatorColor: AppColor.redColor,
                  labelColor: AppColor.redColor,
                  physics: BouncingScrollPhysics(),
                  overlayColor: WidgetStatePropertyAll(Colors.transparent),
                  tabs: [
                    Tab(
                      text: "Near Me",
                    ),
                    Tab(
                      text: "Following",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                  LayoutPostNearMe(),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(color: Colors.brown),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
