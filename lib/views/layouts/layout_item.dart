import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller/app_controller.dart';
import 'package:get/get.dart';

import '../../helper/constant.dart';

class ItemLayout extends StatelessWidget {

AppControllerApp appController;
int Index;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/post logo.png"))),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Bree Cafe",
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColor.textColor,
                    ),
                  ),
                  Text(
                    "10 min ago",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColor.textColor.withOpacity(0.5)),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Follow",
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.redColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 90,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/dots.png"))),
                  ),
                ],
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColor.containerColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/images/near me image.png"),
                    ),
                  ),
                  width: 300,
                  height: 255,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                          AssetImage("assets/images/heart.png"),
                        ),
                      ),
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "1.2k",
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              width:
                              MediaQuery.of(context).size.width,
                              child: Column(
                                children: [
                                  Text(
                                    "03 comments",
                                    style: TextStyle(
                                        fontFamily: "poppins",
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Divider(),
                                  SizedBox(
                                    height: 350,
                                    child: ListView.builder(
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        return ListTile(
                                          leading: Image.asset(
                                            '${appController.bottomSheetImages[index]}',
                                          ),
                                          title: Text(
                                            "${appController.bottomSheetText[index].toString()}",
                                            style: TextStyle(
                                              fontFamily: 'poppins',
                                              fontWeight:
                                              FontWeight.w400,
                                              fontSize: 14,
                                              color: AppColor
                                                  .subHeadingTextColor,
                                            ),
                                          ),
                                          subtitle: Text(
                                            "Nice Food really liked the content and quality as well",
                                            style: TextStyle(
                                              fontFamily: 'poppins',
                                              fontWeight:
                                              FontWeight.w400,
                                              fontSize: 14,
                                              color:
                                              AppColor.textColor,
                                            ),
                                          ),
                                          trailing: Obx(() {
                                            return GestureDetector(
                                              onTap: () {

                                                appController.isTrueBottom
                                                    .value =
                                                !appController
                                                    .isTrueBottom
                                                    .value;
                                              },
                                              child: Column(
                                                children: [
                                                  Icon(
                                                    Icons.favorite,
                                                    color: appController
                                                        .isTrueBottom
                                                        .value
                                                        ? AppColor
                                                        .redColor
                                                        : AppColor
                                                        .subHeadingTextColor,
                                                  ),
                                                  Text(
                                                    "12",
                                                    style: TextStyle(
                                                      fontFamily:
                                                      'poppins',
                                                      fontWeight:
                                                      FontWeight
                                                          .w400,
                                                      fontSize: 14,
                                                      color: appController
                                                          .isTrueBottom
                                                          .value
                                                          ? AppColor
                                                          .redColor
                                                          : AppColor
                                                          .subHeadingTextColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/message icon.png"))),
                        width: 30,
                        height: 30,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "31",
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Ethe 1960s with the release of Letraset sheets p publishing software like Aldus PageMaker including versions of Lorem Ipsum...",
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.subHeadingTextColor,
                  ),
                  textAlign: TextAlign.start,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

ItemLayout({
    required this.appController,
    required this.Index,
  });
}
