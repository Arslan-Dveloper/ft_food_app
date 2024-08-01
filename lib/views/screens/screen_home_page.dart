import 'package:flutter/material.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views/screens/screen_change_adrees.dart';
import 'package:ft_food_app/views/screens/screen_my_order.dart';
import 'package:ft_food_app/views/screens/screen_payment_method.dart';
import 'package:ft_food_app/views/screens/screen_setting.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../layouts/home_screen.dart';
import '../layouts/layout_booking.dart';
import '../layouts/layout_cart.dart';
import '../layouts/layout_post.dart';
import '../layouts/layout_profile.dart';
import 'screen_conversation.dart';
import 'screen_notification.dart';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = [
      {
        "icon": "assets/images/home.png",
        "iconTwo": "assets/images/home 2.png",
        "title": "Home",
        "layout": HomeScreen()
      },
      {
        "icon": "assets/images/post.png",
        "iconTwo": "assets/images/post two.png",
        "title": "Post",
        "layout": LayoutPost()
      },
      {
        "icon": "assets/images/booking.png",
        "iconTwo": "assets/images/booking two.png",
        "title": "Booking",
        "layout": LayoutBooking()
      },
      {
        "icon": "assets/images/cart.png",
        "iconTwo": "assets/images/cart two.png",
        "title": "Cart",
        "layout": LayoutCart()
      },
      {
        "icon": "assets/images/profile.png",
        "iconTwo": "assets/images/profile.png",
        "title": "Profile",
        "layout": LayoutProfile()
      },
    ];

    Rx<Map<String, dynamic>> selectedData = Rx(data[0]);
    return Obx(() {
      return Scaffold(
        drawer: Drawer(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Image.asset(
                    "assets/images/johan.png",
                    scale: 3,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "Jhons Doe",
                    style: GoogleFonts.inter().copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(ScreenPaymentMethod());
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            scale: 4,
                            image: AssetImage(
                              "assets/images/payment.png",
                            ),
                          ),
                        ),
                      ),
                      // Image.asset(
                      //   "assets/images/payment.png",
                      //   scale: 3,
                      // ),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Payment Methods",
                          style: TextStyle(
                              fontFamily: "inter",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w800))
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(ScreenChangeAdrees());
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            scale: 3,
                            image: AssetImage(
                              "assets/images/location.png",
                            ),
                          ),
                        ),
                      ),
                      // Image.asset(
                      //   "assets/images/location.png",
                      //   scale: 3,
                      // ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Delivery Address",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(ScreenMyOrder());
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              scale: 3,
                              image: AssetImage(
                                "assets/images/order.png",
                              ),
                              fit: BoxFit.scaleDown),
                        ),
                      ),
                      Text(
                        "My Orders",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          scale: 3,
                          image: AssetImage(
                            "assets/images/help.png",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Help & Feedback",
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 140,
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(ScreenSetting());
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/setting-01.png"))),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(
                            fontFamily: 'inter',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/Logout.png"))),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Log out",
                      style: TextStyle(
                          fontFamily: 'inter',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
        appBar: selectedData.value["title"] == "Home"
            ? AppBar(
                automaticallyImplyLeading: false,
                leading: Builder(
                  builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Image.asset(
                          "assets/images/menu.png",
                          scale: 5,
                        ),
                      ),
                    );
                  },
                ),
                title: Text(
                  'FOODIT',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 25.sp,
                    fontFamily: "poppins",
                  ),
                ),
                centerTitle: true,
                actions: [
                  GestureDetector(
                    onTap: () {
                      Get.to(ScreenConversation());
                    },
                    child: Image.asset(
                      "assets/images/message ft.png",
                      scale: 4.5,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(ScreenNotification());
                    },
                    child: Image.asset(
                      "assets/images/bell icon.png",
                      scale: 4.5,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              )
            : null,
        body: Obx(
          () {
            return selectedData.value["layout"] as Widget;
          },
        ),
        bottomNavigationBar: Container(
          width: Get.width,
          height: 80,
          decoration: BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                  color: AppColor.blackColor.withOpacity(0.05),
                  offset: Offset(0, -5),
                  spreadRadius: 1,
                  blurRadius: 15),
            ],
          ),
          child: Obx(() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: data.map(
                (e) {
                  return GestureDetector(
                    onTap: () {
                      selectedData.value = e;
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          child: selectedData.value == e
                              ? Image.asset(
                                  e["iconTwo"].toString(),
                                )
                              : Image.asset(
                                  e["icon"].toString(),
                                ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          e["title"].toString(),
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: selectedData.value == e
                                ? AppColor.redColor
                                : AppColor.subHeadingTextColor,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ).toList(),
            );
          }),
        ),
      );
    });
  }
}
