import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/reservation_controller.dart';

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
            SizedBox(
              height: 600,
              child: GridView.builder(
                padding: EdgeInsets.only(left: 10, right: 10),
                itemCount: controller.images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 70,
                    childAspectRatio: 1),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.cyan,
                    height: 300,
                    padding: EdgeInsets.only(right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(controller.images[index].toString()),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          controller.listTextMain[index].toString(),
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
