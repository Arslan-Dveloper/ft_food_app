import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller_restaurant/first_controller.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views_restaurant/item/item_screen_ranking.dart';
import 'package:get/get.dart';

class ScreenRanking extends StatelessWidget {
  const ScreenRanking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(FirstController());
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
        title: MyText(
          text: "Rankings",
          fontSizeText: 23.sp,
          fontweightText: FontWeight.w500,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ItemScreenRanking(
                    index: index,
                    controller: controller,
                  );
                },
                itemCount: controller.mainImage.length,
              ),
            )
          ],
        ).symmetricPadding(horizontal: 20),
      ),
    );
  }
}
