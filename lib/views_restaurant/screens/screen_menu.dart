import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller_restaurant/first_controller.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views_restaurant/item/item_selecte_menu.dart';
import 'package:ft_food_app/views_restaurant/screens/screen_add_menu.dart';
import 'package:get/get.dart';

class ScreenMenu extends StatelessWidget {
  const ScreenMenu({Key? key}) : super(key: key);

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
          text: "Menu",
          fontSizeText: 23.sp,
          fontweightText: FontWeight.w500,
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(ScreenAddMenu());
            },
            child: MyText(
              text: "+ Add New",
              fontSizeText: 14.sp,
              fontweightText: FontWeight.w500,
            ).onlyPadding(right: 20),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.only(left: 5, right: 10),
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 230,
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 0,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return ItemSelecteMenu(
                    controller: controller,
                    index: index,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
