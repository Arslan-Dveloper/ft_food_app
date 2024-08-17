import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller_restaurant/first_controller.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views_restaurant/layout/layout_booking.dart';
import 'package:ft_food_app/views_restaurant/layout/layout_home.dart';
import 'package:ft_food_app/views_restaurant/layout/layout_order.dart';
import 'package:ft_food_app/views_restaurant/layout/layout_post.dart';
import 'package:ft_food_app/views_restaurant/layout/layout_profile.dart';
import 'package:ft_food_app/views_restaurant/screens/screen_menu.dart';
import 'package:ft_food_app/views_restaurant/screens/screen_my_earning.dart';
import 'package:ft_food_app/views_restaurant/screens/screen_payout_method.dart';
import 'package:ft_food_app/views_restaurant/screens/screen_ranking.dart';
import 'package:get/get.dart';

class ScreenRestaurantDashboard extends StatelessWidget {
  const ScreenRestaurantDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    var data = [
      {
        "title": "Home",
        "icon": "assets/images/home.png",
        "iconTwo": "assets/images/home 2.png",
        "layout": LayoutHome()
      },
      {
        "title": "Post",
        "icon": "assets/images/post.png",
        "iconTwo": "assets/images/post two.png",
        "layout": LayoutPost()
      },
      {
        "title": "Booking",
        "icon": "assets/images/booking.png",
        "iconTwo": "assets/images/booking two.png",
        "layout": LayoutBooking()
      },
      {
        "title": "Orders",
        "icon": "assets/images/order bottom.png",
        "iconTwo": "assets/images/order bottom.png",
        "layout": LayoutOrder()
      },
      {
        "title": "Profile",
        "icon": "assets/images/booking logo.png",
        "iconTwo": "assets/images/booking logo.png",
        "layout": LayoutProfile()
      },
    ];

    Rx<Map<String, dynamic>> selectedData = Rx(data[0]);

    var controller = Get.put(FirstController());
    return Obx(() {
      return Scaffold(
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Container(
                  width: 87,
                  height: 87,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/booking logo.png"),
                  )),
                ),
                SizedBox(
                  height: 8,
                ),
                MyText(
                  text: "Fine Dining",
                  fontFaimlyText: 'inter',
                  fontSizeText: 18.sp,
                  fontweightText: FontWeight.w500,
                ),
                SizedBox(
                  height: 45.h,
                ),
                Divider(),
                Column(
                  children: [
                    Row(
                      children: [
                        MyText(
                          text: "Opened",
                          fontFaimlyText: 'poppins',
                          fontSizeText: 14.sp,
                          fontweightText: FontWeight.w400,
                        ),
                        Spacer(),
                        Transform.scale(
                          scale: 0.8,
                          child: Switch(
                            activeTrackColor: AppColor.redColor,
                            value: controller.firstSwitch.value,
                            onChanged: (value) {
                              controller.firstSwitch.value =
                                  !controller.firstSwitch.value;
                              controller.firstSwitch.value = value;
                            },
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        MyText(
                          text: "Accept Bookings",
                          fontFaimlyText: 'poppins',
                          fontSizeText: 14.sp,
                          fontweightText: FontWeight.w400,
                        ),
                        Spacer(),
                        Transform.scale(
                          scale: 0.8,
                          child: Switch(
                            activeTrackColor: AppColor.redColor,
                            value: controller.secondSwitch.value,
                            onChanged: (value) {
                              controller.secondSwitch.value =
                                  !controller.secondSwitch.value;
                              controller.secondSwitch.value = value;
                            },
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        MyText(
                          text: "Take Away",
                          fontFaimlyText: 'poppins',
                          fontSizeText: 14.sp,
                          fontweightText: FontWeight.w400,
                        ),
                        Spacer(),
                        Transform.scale(
                          scale: 0.8,
                          child: Switch(
                            activeTrackColor: AppColor.redColor,
                            value: controller.thirdSwitch.value,
                            onChanged: (value) {
                              controller.thirdSwitch.value =
                                  !controller.thirdSwitch.value;
                              controller.thirdSwitch.value = value;
                            },
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(ScreenMenu());
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/menu-res.png",
                            scale: 4,
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          MyText(
                            text: "Menu",
                            fontFaimlyText: 'poppins',
                            fontSizeText: 14.sp,
                            fontweightText: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(ScreenPayoutMethod());
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/payout-res.png",
                            scale: 4,
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          MyText(
                            text: "Payout Methods",
                            fontFaimlyText: 'poppins',
                            fontSizeText: 14.sp,
                            fontweightText: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(ScreenMyEarning());
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/earning-res.png",
                            scale: 4,
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          MyText(
                            text: "My Earnings",
                            fontFaimlyText: 'poppins',
                            fontSizeText: 14.sp,
                            fontweightText: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(ScreenRanking());
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/ratting-res.png",
                            scale: 4,
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          MyText(
                            text: "Rankings",
                            fontFaimlyText: 'poppins',
                            fontSizeText: 14.sp,
                            fontweightText: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/history-res.png",
                          scale: 4,
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        MyText(
                          text: "Orders History",
                          fontFaimlyText: 'poppins',
                          fontSizeText: 14.sp,
                          fontweightText: FontWeight.w400,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/help-res.png",
                          scale: 4,
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        MyText(
                          text: "Help & Feedback",
                          fontFaimlyText: 'poppins',
                          fontSizeText: 14.sp,
                          fontweightText: FontWeight.w400,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 70,
                    )
                  ],
                ).symmetricPadding(horizontal: 25),
                Divider(),
                Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/setting-01.png",
                          scale: 4,
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        MyText(
                          text: "Settings",
                          fontFaimlyText: 'inter',
                          fontSizeText: 16.sp,
                          fontweightText: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/Logout.png",
                          scale: 4,
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        MyText(
                          text: "Sign Out",
                          fontFaimlyText: 'inter',
                          fontSizeText: 16.sp,
                          fontweightText: FontWeight.w500,
                          textColor: AppColor.redColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ).symmetricPadding(horizontal: 25)
              ],
            ),
          ),
        ),
        appBar: selectedData.value["title"] == "Home"
            ? AppBar(
                leading: Builder(
                  builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Image.asset(
                        "assets/images/menu.png",
                        scale: 5,
                      ),
                    );
                  },
                ),
                automaticallyImplyLeading: false,
                centerTitle: true,
                title: MyText(
                  text: "FOODIT",
                  fontSizeText: 25.sp,
                  fontweightText: FontWeight.w500,
                ),
              )
            : null,
        body: Obx(
          () {
            return selectedData.value["layout"] as Widget;
          },
        ),
        bottomNavigationBar: Container(
          width: screenWidth,
          height: 80.h,
          decoration: BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                spreadRadius: 0,
                color: AppColor.blackColor.withOpacity(0.20),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: data.map(
              (e) {
                return GestureDetector(
                  onTap: () {
                    selectedData.value = e;
                  },
                  child: Obx(() {
                    return Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                              image: selectedData.value == e
                                  ? DecorationImage(
                                      fit: BoxFit.scaleDown,
                                      scale: 2,
                                      image:
                                          AssetImage(e["iconTwo"].toString()))
                                  : DecorationImage(
                                      fit: BoxFit.scaleDown,
                                      scale: 2,
                                      image: AssetImage(e["icon"].toString()))),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        MyText(
                          text: e["title"].toString(),
                          fontSizeText: 12.sp,
                          fontweightText: selectedData.value == e
                              ? FontWeight.w600
                              : FontWeight.w500,
                          textColor: selectedData.value == e
                              ? AppColor.redColor
                              : AppColor.textColor,
                        ),
                      ],
                    );
                  }),
                );
              },
            ).toList(),
          ),
        ),
      );
    });
  }
}
