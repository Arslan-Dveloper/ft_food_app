import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:get/get.dart';

class ScreenCheckOut extends StatelessWidget {
  const ScreenCheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back, size: 18),
        ),
        title: MyText(
          text: "Checkout",
          fontweightText: FontWeight.w500,
          fontSizeText: 23.sp,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                MyText(
                  text: "Credit Card",
                  fontSizeText: 20.sp,
                  fontweightText: FontWeight.w500,
                  textColor: AppColor.textColor,
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: MyText(
                    text: "Change Card",
                    fontSizeText: 14.sp,
                    fontweightText: FontWeight.w500,
                    textColor: AppColor.textColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/visa card image.png",
            ),
            SizedBox(
              height: 34,
            ),
            Divider(),
            SizedBox(
              height: 22,
            ),
            Row(
              children: [
                MyText(
                  text: "Total Items (6)",
                  fontweightText: FontWeight.w500,
                  fontSizeText: 16.sp,
                  textColor: AppColor.blackColor,
                ),
                Spacer(),
                MyText(
                  text: "€280.00",
                  fontweightText: FontWeight.w600,
                  fontSizeText: 18.sp,
                  textColor: AppColor.redColor,
                ),
              ],
            ),
            SizedBox(
              height: 19,
            ),
            Row(
              children: [
                MyText(
                  text: "Company Charges",
                  fontweightText: FontWeight.w500,
                  fontSizeText: 16.sp,
                  textColor: AppColor.blackColor,
                ),
                Spacer(),
                MyText(
                  text: "1.00",
                  fontweightText: FontWeight.w600,
                  fontSizeText: 18.sp,
                  textColor: AppColor.redColor,
                ),
              ],
            ),
            SizedBox(
              height: 19,
            ),
            Row(
              children: [
                MyText(
                  text: "Total Payment",
                  fontweightText: FontWeight.w500,
                  fontSizeText: 16.sp,
                  textColor: AppColor.blackColor,
                ),
                Spacer(),
                MyText(
                  text: "€290.00",
                  fontweightText: FontWeight.w600,
                  fontSizeText: 18.sp,
                  textColor: AppColor.redColor,
                ),
              ],
            ),
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width * 0.75,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Column(
                          children: [
                            Image.asset(
                              "assets/images/blue tick.png",
                              scale: 4,
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            MyText(
                              text: "Request Sent",
                              fontSizeText: 20.sp,
                              fontweightText: FontWeight.w600,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            MyText(
                              text:
                                  "Reservation Request has been sent to the Restaurant.",
                              fontSizeText: 16.sp,
                              fontweightText: FontWeight.w400,
                              textColor: AppColor.textColor.withOpacity(0.7),
                              textAlignText: TextAlign.center,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                        actions: [
                          Container(
                            width: 116,
                            height: 45,
                            child: Center(
                              child: MyText(
                                text: "Home",
                                fontSizeText: 14,
                                fontweightText: FontWeight.w400,
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColor.whiteColor,
                                border: Border.all(
                                  color: AppColor.containerBorder,
                                )),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              child: Center(
                                child: MyText(
                                  text: "Bookings",
                                  fontSizeText: 14,
                                  fontweightText: FontWeight.w400,
                                  textColor: AppColor.whiteColor,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColor.redColor,
                                  border: Border.all(
                                    color: AppColor.containerBorder,
                                  )),
                              width: 116,
                              height: 45,
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  "Pay \$280.00",
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: AppColor.whiteColor),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ).symmetricPadding(horizontal: 20),
      ),
    );
  }
}
