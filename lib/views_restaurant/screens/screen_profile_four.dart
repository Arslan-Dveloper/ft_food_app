import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views_restaurant/screens/screen_profile_five.dart';
import 'package:get/get.dart';

class ScreenProfileFour extends StatelessWidget {
  const ScreenProfileFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listText = [
      "Select Delivery Service Area",
      "Select Delivery Service Area Two",
      "Select Delivery Service Area Three",
    ];
    var selected = listText.first.obs;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                LinearProgressIndicator(
                  value: 0.1428571428571429 * 4,
                  backgroundColor: AppColor.subHeadingTextColor,
                  color: AppColor.redColor,
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: MyText(
                    text: "Delivery Range",
                    fontSizeText: 18.sp,
                    fontweightText: FontWeight.w500,
                    textColor: AppColor.textColor,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                MyText(
                  text: "Selecting Your Home Delivery Service Area",
                  fontSizeText: 16.sp,
                  fontweightText: FontWeight.w400,
                  textColor: AppColor.textColor.withOpacity(0.8),
                  textAlignText: TextAlign.center,
                ).symmetricPadding(horizontal: 60),
                SizedBox(
                  height: 20,
                ),
                // Container(
                //   width: Get.width,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(10),
                //       border:
                //           Border.all(color: AppColor.textFormFieldBorderColor)),
                //   child: Row(
                //     children: [
                //       Text(
                //         "${selected.value}",
                //         style: TextStyle(
                //             fontFamily: 'poppins',
                //             fontSize: 14.sp,
                //             fontWeight: FontWeight.w400,
                //             color: AppColor.subHeadingTextColor),
                //       ).onlyPadding(left: 20, top: 12, bottom: 12),
                //       DropdownButton(underline: SizedBox(),
                //         items: listText.map(
                //           (e) {
                //             return DropdownMenuItem(
                //               child: Text(
                //                 e.toString(),
                //               ),value: e.toString(),
                //             );
                //           },
                //         ).toList(),
                //         onChanged: (value) {
                //           selected.value = value!;
                //         },
                //         value: selected.value,
                //       )
                //     ],
                //   ),
                // ).symmetricPadding(horizontal: 20),
                Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: AppColor.textFormFieldBorderColor),
                      borderRadius: BorderRadius.circular(10)),
                  child: ExpansionTile(
                    childrenPadding: EdgeInsets.only(bottom: 15),
                    title: Text(
                      "Select Delivery Service Area",
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    children: listText.map(
                      (e) {
                        return Text(e.toString()).onlyPadding(top: 5);
                      },
                    ).toList(),
                  ),
                ).symmetricPadding(horizontal: 20),
                Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(ScreenProfileFive());
                    },
                    child: MyText(
                      text: "Continue",
                      fontSizeText: 16.sp,
                      fontweightText: FontWeight.w500,
                      textColor: AppColor.whiteColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
