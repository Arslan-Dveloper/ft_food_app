import 'package:flutter/material.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'log_in_screen.dart';

class SelectCategoreyScreen extends StatelessWidget {
  const SelectCategoreyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    var data = [
      {
        'image': 'assets/images/resturant.png',
        'title': 'Restaurant',
      },
      {
        'image': 'assets/images/customer.png',
        'title': 'Customer',
      }
    ];
    //Rx<Map<String, dynamic>> selectedData = Rx(managerSideBarData[0]);
    Rx<Map<String, String>> selectedData = Rx(data[0]);
    // var selectedData = (data[0]).obs;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 85,
              ),
              Center(
                child: Text(
                  "Continue As?",
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.textColor,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  "Select a Category to begin",
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.subHeadingTextColor,
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Obx(() {
                return Column(
                  children: data.map(
                    (e) {
                      return GestureDetector(
                        onTap: () {
                          selectedData.value = e;
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          width: screenWidth * 0.9,
                          height: 154,
                          decoration: BoxDecoration(
                            color: AppColor.whiteColor,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: selectedData.value == e
                                    ? AppColor.redColor
                                    : Colors.transparent),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.blackColor.withOpacity(0.1),
                                offset: Offset(0, 0),
                                blurRadius: 15,
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Image.asset(e['image'].toString()),
                                width: 140,
                                height: 130,
                              ),
                              Text(
                                e['title'].toString(),
                                style: GoogleFonts.poppins().copyWith(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.textColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ).toList(),
                );
              }),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  width: screenWidth * 0.8,
                  height: 55,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.redColor,
                        overlayColor: AppColor.whiteColor,
                      ),
                      onPressed: () {
                        Get.to(LogInScreen());
                      },
                      child: Text(
                        'Continue',
                        style: GoogleFonts.poppins().copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColor.whiteColor,
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
