import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:get/get.dart';

import '../../controller/reservation_controller.dart';
import '../../custom_widget/my_custom_text.dart';

class ReservationScreen extends StatelessWidget {
  const ReservationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ReservationController());
    controller.selectedItem.value = controller.numbersSelection[0];
    //   var numbersSelection = [
    //     1,
    //     2,
    //     3,
    //     4,
    //     5,
    //     6,
    //     7,
    //     8,
    //     9,
    //     10,
    //   ];
    //   var selectedItem = numbersSelection.first.obs;

    var data = [
      {"day": "today", "date": "12"},
      {"day": "Tue", "date": "13"},
      {"day": "Wed", "date": "14"},
      {"day": "Thu", "date": "15"},
      {"day": "Fri", "date": "16"},
      {"day": "Sat", "date": "17"},
    ];

    Rx<Map<String, String>> selectedData = Rx(data[0]);
    //var selectedData=data[0];

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: "No of People",
                fontSizeText: 20,
                fontweightText: FontWeight.w500,
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
              MyText(
                text: "Date",
                fontSizeText: 20,
                fontweightText: FontWeight.w500,
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
                            SizedBox(height: 10,width: 55.sp,),
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
            ],
          ),
        ),
      ),
    );
  }
}
