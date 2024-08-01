import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller/reservation_controller.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views/layouts/item_home_delievery.dart';
import 'package:ft_food_app/views/layouts/item_take_away.dart';
import 'package:get/get.dart';

class ScreenMyOrder extends StatelessWidget {
  const ScreenMyOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ReservationController());
    var tab = [
      "Home Delivery",
      "Take Away",
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.03,
          shadowColor: AppColor.blackColor,
          backgroundColor: AppColor.whiteColor,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back),
          ),
          title: MyText(
            text: "My Orders",
            fontSizeText: 23.sp,
            fontweightText: FontWeight.w500,
            textColor: AppColor.textColor,
          ),
          centerTitle: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          bottom: TabBar(
              overlayColor: WidgetStatePropertyAll(Colors.transparent),
              indicatorColor: AppColor.redColor,
              labelColor: AppColor.redColor,
              dividerColor: Colors.transparent,
              labelStyle: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                fontFamily: 'poppins',
              ),
              tabs: tab.map(
                (e) {
                  return Tab(
                    text: e.toString(),
                  );
                },
              ).toList()),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: TabBarView(
                  children: [
                    ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return ItemHomeDelievery(
                          index: index,
                          controller: controller,
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return ItemTakeAway(
                          index: index,
                        );
                      },
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
