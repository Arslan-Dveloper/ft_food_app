import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller/reservation_controller.dart';

import '../../custom_widget/my_custom_text.dart';
import '../../helper/constant.dart';

class ItemReview extends StatelessWidget {
  ReservationController controller;
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "${controller.imagesReview[index]}",
                scale: 3,
              ),
              SizedBox(width: 5,),
              MyText(
                text: "${controller.imagesReviewName[index]}",
                fontSizeText: 16.sp,
                fontweightText: FontWeight.w500,
                textColor: AppColor.blackColor,
              ),
              Spacer(),
              RatingBar.builder(
                itemSize: 16,
                minRating: 0,
                itemBuilder: (context, index) {
                  return Icon(
                    Icons.star,
                    color: Colors.amber,
                  );
                },
                onRatingUpdate: (value) {
                  controller.rattingValue.value = value;
                },
              ),
            ],
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent feugiat purus nec dolor sollicitudin pellentesque.",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColor.reviewTextColor,
                fontFamily: "poppins"),
          )
        ],
      ),
    );
  }

  ItemReview({
    required this.controller,
    required this.index,
  });
}
