import 'package:flutter/material.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:get/get.dart';

class ScreenNotification extends StatelessWidget {
  const ScreenNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 23,
            fontWeight: FontWeight.w500,
            color: AppColor.textColor,
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(shrinkWrap: true,physics: BouncingScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: Image.asset("assets/images/notification logo.png"),
                      title: RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColor.textColor),
                          children: [
                            TextSpan(
                              text: "Fine Dining",
                              style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.redColor),
                            ),
                            TextSpan(
                              text: " accepted your order request for",
                            ),
                            TextSpan(
                              text: " Chinese Platter.",
                              style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.redColor),
                            ),
                          ],
                        ),
                      ),
                      subtitle: Text(
                        "Just now",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: AppColor.subHeadingTextColor),
                      ),
                      trailing: Image.asset(
                        'assets/images/dots.png',
                        scale: 5,
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
