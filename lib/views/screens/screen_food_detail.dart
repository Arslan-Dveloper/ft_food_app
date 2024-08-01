import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller/reservation_controller.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views/screens/screen_confirm_reservation.dart';
import 'package:ft_food_app/views/screens/screen_services_method.dart';
import 'package:get/get.dart';

class ScreenFoodDetail extends StatelessWidget {
  bool isTableBooking;

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ReservationController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: controller.selectedIndex.value,
                child: Stack(
                  children: [
                    Container(
                      width: Get.width,
                      height: 365.sp,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                          image: DecorationImage(
                              image: AssetImage(
                                  "${controller.images[controller.selectedIndex.value]}"),
                              fit: BoxFit.cover)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child:
                          Icon(Icons.arrow_back).onlyPadding(left: 5, top: 10),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${controller.listTextMain[controller.selectedIndex.value].toString()}",
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: AppColor.textColor,
                    ),
                  ),
                  Text(
                    "${controller.price[controller.selectedIndex.value].toString()}",
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: AppColor.textColor,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/star.png",
                        scale: 4,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "4.5",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp),
                      ),
                      Text(
                        "(13 Reviews)",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            color: AppColor.blackColor.withOpacity(0.3)),
                      )
                    ],
                  ),
                  Text(
                    "About",
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppColor.textColor,
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipi scing elit, sed do eiusmod tempor incididunt",
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.textColor.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text(
                        "Quantity",
                        style: TextStyle(
                          fontFamily: "poppins",
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: AppColor.textColor,
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          if (controller.selectedIndexAdd.value > 0) {
                            controller.selectedIndexAdd.value--;
                          }
                        },
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              color: AppColor.textColor,
                              borderRadius: BorderRadius.circular(
                                25,
                              ),
                              image: DecorationImage(
                                  scale: 3,
                                  image:
                                      AssetImage("assets/images/minus.png"))),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Obx(() {
                        return Text(
                          "${controller.selectedIndexAdd.value}",
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 25.sp,
                            color: AppColor.textColor,
                          ),
                        );
                      }),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.selectedIndexAdd.value++;
                        },
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              color: AppColor.textColor,
                              borderRadius: BorderRadius.circular(
                                25,
                              ),
                              image: DecorationImage(
                                  scale: 4,
                                  image: AssetImage("assets/images/add.png"))),
                        ),
                      )
                    ],
                  )
                ],
              ).symmetricPadding(horizontal: 20),
              SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                  color: AppColor.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.blackColor.withOpacity(0.050),
                      blurRadius: 5,
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "62.00",
                      style: TextStyle(
                        fontFamily: "poppins",
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.textColor,
                      ),
                    ).onlyPadding(top: 36, left: 25),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(ScreenServicesMethod());
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 19, right: 19, bottom: 10, top: 10),
                            decoration: BoxDecoration(
                                color: AppColor.containerBackGroundColor,
                                borderRadius: BorderRadius.circular(44)),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/cart.png",
                                  scale: 3,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Add to Cart",
                                  style: TextStyle(
                                    fontFamily: "poppins",
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.textColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 55,
                          child: ElevatedButton(
                            onPressed: () {
                              if (isTableBooking == true) {
                                Get.back();
                              } else {}
                              ScreenServicesMethod();
                            },
                            child: Text(
                              "Order Now",
                              style: TextStyle(
                                color: AppColor.whiteColor,
                                fontFamily: "poppins",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
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

  ScreenFoodDetail({
    required this.isTableBooking,
  });
}
