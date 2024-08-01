import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controller/reservation_controller.dart';
import '../views/layouts/item_menu_two.dart';
import '../views/layouts/item_review.dart';
import '../views/screens/screen_reservation.dart';

class MainScreenRestaurant extends StatelessWidget {
  const MainScreenRestaurant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = [
      "Bookings",
      "Menu",
      "Reviews",
      "Posts",
    ];

    var listImages = [
      "assets/images/image no 1.png",
      "assets/images/image no 2.png",
      "assets/images/image no 3.png",
      "assets/images/image no 4.png",
    ];

    var listTextMain = [
      "Special Bowl",
      "Italian Platter",
      "Vege Salad",
      "Chinese Bowl",
    ];

    var listPrice = [
      "€190.50 ",
      "€200.00",
      "€120.00",
      "€230.50",
    ];

    var selectedText = [
      "Overall",
      "This Month",
      "previous Month",
    ];

    var selectedOne = selectedText.first.obs;
    var controller = Get.put(ReservationController());

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: 393,
                height: 268,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage("assets/images/main screen image.png"))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: GestureDetector(
                        onTap: (){
                          Get.back();
                        },
                        child: Container(
                          width: 50,
                          height: 32,
                          decoration: BoxDecoration(
                              color: AppColor.whiteColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.arrow_back,
                            color: AppColor.whiteColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 170,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Container(
                        width: 100,
                        height: 32,
                        decoration: BoxDecoration(
                            color: AppColor.redColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            'follow',
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 10.sp,
                              color: AppColor.whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/booking logo.png"),
                                ),
                              ),
                            ),
                            Text(
                              "Fine Dining",
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColor.textColor,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/booking location.png"))),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "456 Oak Avenue, State 12345",
                              style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.textColor.withOpacity(0.5)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/phone.png"))),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "+39 02 1234567",
                              style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.textColor.withOpacity(0.5)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/booking profile.png"))),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "520",
                              style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.textColor.withOpacity(0.5)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage("assets/images/star.png"),
                              )),
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w900,
                                  color: AppColor.blackColor),
                            ),
                            Text(
                              "(13 Reviews)",
                              style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.blackColor.withOpacity(0.3)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Message",
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.redColor,
                              ),
                            ),
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/red message icon.png"),
                              )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text:
                          "Welcome to Fine Dining: a cozy spot in the heart of the city. We serve tasty dishes from around the world.",
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.blackColor)),
                  TextSpan(
                      text: "Read More",
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.redColor))
                ])),
              ),
              SizedBox(
                height: 17,
              ),
              TabBar(
                  labelColor: AppColor.redColor,
                  physics: BouncingScrollPhysics(),
                  overlayColor: WidgetStatePropertyAll(Colors.transparent),
                  dividerColor: Colors.transparent,
                  indicatorColor: AppColor.redColor,
                  tabs: list.map(
                    (e) {
                      return Tab(text: e.toString());
                    },
                  ).toList()),
              Expanded(
                child: TabBarView(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(ScreenReservation());
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/table.png"))),
                            ),
                            Text(
                              'Book a Table >',
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    GridView.builder(
                      padding: EdgeInsets.only(left: 5, right: 10, top: 20),
                      itemCount: listImages.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 230,
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 0,
                        childAspectRatio: 1,
                      ),
                      itemBuilder: (context, index) {
                        return ItemMenuTwo(
                          index: index,
                          controller: controller,
                        );
                      },
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        color: Colors.black),
                                    children: [
                                      TextSpan(text: "Reviews "),
                                      TextSpan(
                                          text: "(13)",
                                          style: TextStyle(
                                              fontFamily: 'poppins',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15,
                                              color:
                                                  AppColor.subHeadingTextColor))
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Obx(() {
                                  return DropdownButton(
                                    icon: Icon(Icons.keyboard_arrow_up),
                                    underline: SizedBox(),
                                    items: selectedText.map(
                                      (e) {
                                        return DropdownMenuItem(
                                          child: Text(e),
                                          value: e.toString(),
                                        );
                                      },
                                    ).toList(),
                                    onChanged: (value) {
                                      selectedOne.value = value!;
                                    },
                                    value: selectedOne.value,
                                  );
                                }),
                              ],
                            ),
                            Expanded(
                              child: ListView.builder(
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return ItemReview(
                                    controller: controller,
                                    index: index,
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Container(
                        child: Column(
                          children: [
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
                                          color: AppColor.textColor
                                              .withOpacity(0.5)),
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
                                                "assets/images/near me image.png"))),
                                    width: 300,
                                    height: 255,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/heart.png"))),
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
                                      Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/message icon.png"))),
                                        width: 30,
                                        height: 30,
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
                            SizedBox(
                              height: 20,
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
                                          color: AppColor.textColor
                                              .withOpacity(0.5)),
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
                                                "assets/images/near me two.png"))),
                                    width: 300,
                                    height: 255,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/heart.png"))),
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
                                      Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/message icon.png"))),
                                        width: 30,
                                        height: 30,
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
                            )
                          ],
                        ),
                      ),
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
