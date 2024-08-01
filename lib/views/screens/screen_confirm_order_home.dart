import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller/reservation_controller.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views/screens/screen_payment_method_reservation.dart';
import 'package:get/get.dart';

class ScreenConfirmOrderHome extends StatelessWidget {
  const ScreenConfirmOrderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ReservationController());
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Confirm Order",
          style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 23.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 250,
              child: Expanded(
                child: GridView.builder(
                  itemCount: controller.imagesTwo.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 230,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            controller.imagesTwo[index].toString(),
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 5),
                          Text(
                            controller.listTextMainTwo[index].toString(),
                            style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColor.textColor.withOpacity(0.8)),
                            overflow:
                            TextOverflow.ellipsis, // Handle text overflow
                          ),
                          RatingBar.builder(
                            itemSize: 16,
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
                            controller.priceTwo[index].toString(),
                            style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColor.textColor.withOpacity(0.8)),
                            overflow:
                            TextOverflow.ellipsis, // Handle text overflow
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Spacer(),
            Center(
              child: Container(
                width: Get.width * 0.75,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(ScreenPaymentMethodReservation());
                  },
                  child: Text(
                    "Confirm",
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColor.whiteColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ).symmetricPadding(horizontal: 20),
      ),
    );
  }
}
