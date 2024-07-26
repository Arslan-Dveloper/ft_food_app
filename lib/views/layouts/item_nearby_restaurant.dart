import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller/app_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../helper/constant.dart';

class ItemNearByRestuant extends StatelessWidget {
AppControllerApp appController;
int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.containerColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: AppColor.blackColor.withOpacity(0.1),
          )),
      margin: EdgeInsets.only(right: 20),
      width: 241,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            appController.listImage[index].toString(),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  appController.smallImageText[index].toString(),
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 5),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/star.png",
                  scale: 3,
                ),
                Text(
                  appController.number[index],
                  style: TextStyle(
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, left: 10),
            child: Row(
              children: [
                Text(
                  "0.5 km away",
                  style: TextStyle(
                    fontFamily: 'inter',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                Text(
                  "open",
                  style: TextStyle(
                      fontFamily: 'inter',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.greenColor),
                ),
                SizedBox(
                  width: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

ItemNearByRestuant({
    required this.appController,
    required this.index,
  });
}
