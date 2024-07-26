import 'package:flutter/material.dart';
import 'package:ft_food_app/controller/app_controller.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LayoutCart extends StatelessWidget {
  const LayoutCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppControllerApp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: TextStyle(
            fontFamily: 'poppins',
            fontWeight: FontWeight.w700,
            fontSize: 16.sp,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Get.height,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Row(
                        children: [
                          Obx(
                            () {
                              return Checkbox(
                                fillColor:
                                    WidgetStatePropertyAll(AppColor.redColor),
                                value: controller.cartImagesCheckBox[index],
                                onChanged: (value) {
                                  controller.cartImagesCheckBox[index] = value!;
                                },
                              );
                            },
                          ),
                          Container(
                            width: 150,
                            height: 150,
                            child:
                                Image.asset("${controller.cartImages[index]}"),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Special Bowl",
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.sp,
                                  color: AppColor.textColor,
                                ),
                              ),
                              Text(
                                "€190.50",
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.sp,
                                  color: AppColor.textColor,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      if (controller.cartImagesNumber[index] >
                                          0) {
                                        controller.cartImagesNumber[index]--;
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
                                              image: AssetImage(
                                                  "assets/images/minus.png"))),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 9,
                                  ),
                                  Obx(() {
                                    return Text(
                                      "${controller.cartImagesNumber[index]}",
                                      style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.w800,
                                        fontSize: 16.sp,
                                        color: AppColor.textColor,
                                      ),
                                    );
                                  }),
                                  SizedBox(
                                    width: 9,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller.cartImagesNumber[index]++;
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
                                              image: AssetImage(
                                                  "assets/images/add.png"))),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
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
