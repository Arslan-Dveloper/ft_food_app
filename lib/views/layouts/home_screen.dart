import 'package:flutter/material.dart';
import 'package:ft_food_app/controller/app_controller.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views/layouts/item_nearby_restaurant.dart';
import 'package:ft_food_app/views/layouts/item_top_rated.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../restaurant_detail/main_screen_restaurant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppControllerApp());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Search Restaurant",
                    hintStyle: GoogleFonts.poppins().copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: AppColor.subHeadingTextColor,
                    ),
                    prefixIcon: Container(
                      child: Image.asset(
                        "assets/images/search.png",
                        scale: 4,
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nearby",
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.textColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.to(MainScreenRestaurant());
                    },
                    child: Text(
                      "View All",
                      style: GoogleFonts.poppins().copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColor.textColor.withOpacity(0.8),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 276,
                child: ListView.builder(
                  itemCount: controller.listImage.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ItemNearByRestuant(
                      appController: controller,
                      index: index,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Rated",
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColor.textColor,
                    ),
                  ),
                  Text(
                    "View All",
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColor.textColor.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 430,
                width: Get.width,
                child: ListView.builder(
                  itemCount: controller.imageTWo.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ItemTopRated(controller: controller,index: index,);
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
