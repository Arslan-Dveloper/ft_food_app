import 'package:flutter/material.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LayoutBooking extends StatelessWidget {
  const LayoutBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text(
              "Bookings",
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w800,
                  color: AppColor.textColor),
            ),
            SizedBox(height: 20,),
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.whiteColor,
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 20,
                        color: AppColor.blackColor.withOpacity(0.1),
                        offset: Offset(0, 0),
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 105,
                        height: 110,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/booking image.png"))),
                      ),
                      SizedBox(
                        width: 10,
                      ),
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
                                            "assets/images/booking logo.png"))),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Fine Dining",
                                style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.textColor),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
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
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w700,
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
                                            "assets/images/booking calander.png"))),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "12 Jan, 2024",
                                style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w700,
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
                                            "assets/images/booking time.png"))),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "11:00 Am",
                                style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w700,
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
                                "4 People",
                                style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.textColor.withOpacity(0.5)),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
