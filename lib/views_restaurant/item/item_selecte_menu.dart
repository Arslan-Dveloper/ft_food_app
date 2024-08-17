import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller_restaurant/first_controller.dart';

import '../../helper/constant.dart';

class ItemSelecteMenu extends StatelessWidget {
 FirstController controller;
 int index;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: RatingBar.builder(maxRating: 5,
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
    );
  }

 ItemSelecteMenu({
    required this.controller,
    required this.index,
  });
}
