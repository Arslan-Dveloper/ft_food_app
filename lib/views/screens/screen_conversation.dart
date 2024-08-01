import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller/app_controller.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:get/get.dart';

import 'chat_with_restaurant.dart';

class ScreenConversation extends StatelessWidget {
  const ScreenConversation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller=Get.put(AppControllerApp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Conversations",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
            fontFamily: 'poppins',
            color: AppColor.textColor,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,color: AppColor.subHeadingTextColor
                  ),
                  prefixIcon: Icon(Icons.search,color: AppColor.subHeadingTextColor,)
                ),
              ),
            ),
            SizedBox(height: 24,),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      Get.to(ChatWithRestaurant());
                    },
                    child: ListTile(
                      leading:
                          Image.asset("assets/images/notification logo.png"),
                      title: Text(
                        "Fine Dinings",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: AppColor.textColor),
                      ),
                      subtitle: Text(
                        "That’s great, I look forward to...",
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: AppColor.subHeadingTextColor,
                        ),
                      ),
                      trailing: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "${controller.conversationText[index]}",
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: AppColor.subHeadingTextColor.withOpacity(0.8),
                            ),
                          ),
                          SizedBox(height: 10,),
                          // Container(
                          //   width: 22,
                          //   height: 22,
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(22),
                          //     color: AppColor.redColor.withOpacity(0.05)
                          //   ),
                          //   child: Center(
                          //     child: Text(
                          //       "1",
                          //       style: TextStyle(
                          //         fontFamily: 'poppins',
                          //         fontWeight: FontWeight.w400,
                          //         fontSize: 12,
                          //         color: AppColor.subHeadingTextColor,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
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
