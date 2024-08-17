import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views_restaurant/item/item_booking_request.dart';
import 'package:ft_food_app/views_restaurant/item/item_my_booking.dart';
import 'package:get/get.dart';

class LayoutBooking extends StatelessWidget {
  const LayoutBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = [
      "My Bookings",
      "Booking Requests",
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
          ),
          backgroundColor: AppColor.whiteColor,
          title: MyText(
            text: "Bookings",
            fontSizeText: 23.sp,
            fontweightText: FontWeight.w500,
          ),
          bottom: TabBar(
              labelStyle: TextStyle(
                fontFamily: 'poppins',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              labelColor: AppColor.redColor,
              indicatorColor: AppColor.redColor,
              unselectedLabelColor: AppColor.textColor,
              dividerColor: Colors.transparent,
              overlayColor: WidgetStatePropertyAll(Colors.transparent),
              padding: EdgeInsets.only(bottom: 8),
              unselectedLabelStyle: TextStyle(
                fontFamily: 'poppins',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              tabs: data.map(
                (e) {
                  return Tab(
                    text: e.toString(),
                  );
                },
              ).toList()),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              Container(
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return ItemMyBooking();
                        },
                        itemCount: 3,
                      ),
                    )
                  ],
                ).symmetricPadding(horizontal: 25),
              ),
              Container(
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return ItemBookingRequest();
                        },
                        itemCount: 1,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
