import 'package:flutter/material.dart';
import 'package:ft_food_app/controller/app_controller.dart';
import 'package:get/get.dart';

import '../../helper/constant.dart';


class ChatWithRestaurant extends StatelessWidget {
  const ChatWithRestaurant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppControllerApp());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 200,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
        flexibleSpace: Column(
          children: [
            ListTile(
              leading: Image.asset("assets/images/notification logo.png"),
              title: Text(
                "Fine Dinings",
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: AppColor.textColor),
              ),
              subtitle: Text(
                "online",
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: AppColor.subHeadingTextColor,
                ),
              ),
              trailing: Image.asset(
                "assets/images/dots.png",
                scale: 5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
