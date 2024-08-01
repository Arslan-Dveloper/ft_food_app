import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller/reservation_controller.dart';
import 'package:ft_food_app/views/screens/screen_food_detail.dart';
import 'package:get/get.dart';

import '../../helper/constant.dart';

class ItemMenu extends StatelessWidget {
  ReservationController controller;
  int index;

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ReservationController());
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            controller.selectedIndexAdd.value = index;
            Get.to(ScreenFoodDetail(
              isTableBooking: true,
            ));
          },
          onLongPress: () {
            controller.addValue(ItemMenu(
              controller: controller,
              index: index,
            ).toString());
          },
          child: Hero(
            tag: index,
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    controller.images[index].toString(),
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 5),
                  Text(
                    controller.listTextMain[index].toString(),
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.textColor.withOpacity(0.8)),
                    overflow: TextOverflow.ellipsis, // Handle text overflow
                  ),
                  Flexible(
                    child: RatingBar.builder(
                      itemSize: 16,
                      minRating: 0,
                      itemBuilder: (context, index) {
                        return Icon(
                          Icons.star,
                          color: Colors.amber,
                        );
                      },
                      onRatingUpdate: (ratting) {
                        controller.rattingValue.value = ratting;
                      },
                    ),
                  ),
                  Text(
                    controller.price[index].toString(),
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.textColor.withOpacity(0.8)),
                    overflow: TextOverflow.ellipsis, // Handle text overflow
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 6,
          right: 10,
          child: Obx(() {
            return Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                color: controller.selectedIndexAdd.value == index
                    ? AppColor.redColor
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(50),
              ),
            );
          }),
        )
      ],
    );
  }

  ItemMenu({
    required this.controller,
    required this.index,
  });
}
