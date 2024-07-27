import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views/screens/screen_select_menu.dart';
import 'package:get/get.dart';

import '../../controller/reservation_controller.dart';
import '../../custom_widget/my_custom_text.dart';

class ReservationScreen extends StatelessWidget {
  const ReservationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ReservationController());
    controller.selectedItem.value = controller.numbersSelection[0];

    var data = [
      {"day": "today", "date": "12"},
      {"day": "Tue", "date": "13"},
      {"day": "Wed", "date": "14"},
      {"day": "Thu", "date": "15"},
      {"day": "Fri", "date": "16"},
      {"day": "Sat", "date": "17"},
    ];

    Rx<Map<String, String>> selectedData = Rx(data[0]);

    var time = ["10:15 am", "10:20 am", "10:25 am", "10:30 am", "10:35 am"];

    var selectedTime = time[0].obs;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back),
        ),
        title: MyText(
          text: 'Reserve Table',
          fontSizeText: 23,
          fontweightText: FontWeight.w700,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                MyText(
                  text: "No of People",
                  fontSizeText: 20,
                  fontweightText: FontWeight.w500,
                ),
                SizedBox(
                  height: 8,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Obx(() {
                    return Row(
                      children: controller.numbersSelection.map(
                        (e) {
                          return GestureDetector(
                            onTap: () {
                              controller.selectedItem.value = e;
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: controller.selectedItem.value == e
                                    ? AppColor.redColor.withOpacity(0.2)
                                    : Colors.transparent,
                              ),
                              child: Center(
                                child: Text(e.toString()),
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    );
                  }),
                ),
                SizedBox(
                  height: 24,
                ),
                MyText(
                  text: "Date",
                  fontSizeText: 20,
                  fontweightText: FontWeight.w500,
                ),
                SizedBox(
                  height: 8,
                ),
                Obx(() {
                  return Row(
                    children: data.map(
                      (e) {
                        return GestureDetector(
                          onTap: () {
                            selectedData.value = e;
                          },
                          child: Column(
                            children: [
                              Text(
                                e["day"].toString(),
                                style: TextStyle(
                                  color: selectedData.value == e
                                      ? AppColor.redColor
                                      : Colors.black,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                                width: 55.sp,
                              ),
                              Text(
                                e["date"].toString(),
                                style: TextStyle(
                                  color: selectedData.value == e
                                      ? AppColor.redColor
                                      : Colors.black,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ).toList(),
                  );
                }),
                SizedBox(
                  height: 24,
                ),
                MyText(
                  text: "Time",
                  fontSizeText: 20,
                  fontweightText: FontWeight.w500,
                ),
                SizedBox(
                  height: 8,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Obx(() {
                    return Row(
                        children: time.map(
                      (e) {
                        return GestureDetector(
                          onTap: () {
                            selectedTime.value = e;
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 10),
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: selectedTime.value == e
                                  ? AppColor.redColor.withOpacity(0.2)
                                  : AppColor.containerBackGroundColor,
                            ),
                            child: Center(
                              child: Text(
                                e.toString(),
                                style: TextStyle(
                                  fontFamily: "poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: selectedTime.value == e
                                      ? AppColor.redColor
                                      : AppColor.blackColor,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ).toList());
                  }),
                ),
                SizedBox(
                  height: 24,
                ),
                MyText(
                  text: "Phone No.",
                  fontSizeText: 20,
                  fontweightText: FontWeight.w500,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "+39"),
                ),
                SizedBox(
                  height: 24,
                ),
                Obx(() {
                  return Align(
                    alignment: Alignment.centerRight,
                    child: Switch(
                      trackOutlineWidth: WidgetStatePropertyAll(0),
                      splashRadius: 0,
                      activeColor: AppColor.redColor,
                      value: controller.switchValue.value,
                      onChanged: (value) {
                        controller.switchValue.value = value;
                      },
                    ),
                  );
                }),
                MyText(
                  text: "In a Rush",
                  fontSizeText: 20,
                  fontweightText: FontWeight.w500,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 162,
                    height: 135,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: AppColor.subHeadingTextColor.withOpacity(0.3),
                      ),
                    ),
                    child: Center(
                      child: MyText(
                        text: "Select Menu",
                        fontweightText: FontWeight.w400,
                        fontSizeText: 14,
                        textColor: AppColor.textColor.withOpacity(0.8),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                MyText(
                  text: "Notes",
                  fontSizeText: 20,
                  fontweightText: FontWeight.w500,
                ),
                TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(
                      hintText: "Write Special instructions (Optional)",
                      hintStyle: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColor.blackColor.withOpacity(0.5))),
                ),
                SizedBox(
                  height: 60,
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(),
                      onPressed: () {
                        Get.to(ScreenSelectMenu());
                      },
                      child: Text(
                        "Book Now",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
