import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views/screens/screen_food_detail.dart';
import 'package:get/get.dart';

import '../../controller/reservation_controller.dart';
import '../layouts/item_menu.dart';

class ScreenSelectMenu extends StatelessWidget {
  const ScreenSelectMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ReservationController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Select Menu",
          style: TextStyle(
              fontFamily: "poppins",
              fontSize: 23.sp,
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.only(left: 5, right: 10),
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 230,
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 0,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  String item = controller.listTextMain[index].toString();
                  return ItemMenu(
                    controller: controller,
                    index: index,
                  );
                },
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.75,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(),
                  onPressed: () {
                    Get.back(result: controller.savedValue.toList());
                    log("length of list ${controller.savedValue}");
                  },
                  child: Text(
                    "Confirm",
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
    );
  }
}
