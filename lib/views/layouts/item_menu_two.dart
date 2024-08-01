import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller/reservation_controller.dart';
import 'package:get/get.dart';

import '../../helper/constant.dart';
import '../screens/screen_food_detail.dart';

class ItemMenuTwo extends StatelessWidget {
  ReservationController controller;
  int index;

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ReservationController());
    return GestureDetector(
      onTap: () {
        controller.selectedIndexAdd.value = index;
        Get.to(ScreenFoodDetail(
          isTableBooking: true,
        ));
      },
      onLongPress: () {},
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
              RatingBar.builder(
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
    );
  }

  ItemMenuTwo({
    required this.controller,
    required this.index,
  });
}
