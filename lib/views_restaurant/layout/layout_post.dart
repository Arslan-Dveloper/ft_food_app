import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views_restaurant/screens/screen_add_new_post.dart';
import 'package:get/get.dart';

class LayoutPost extends StatelessWidget {
  const LayoutPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = [
      "assets/images/post list (1).png",
      "assets/images/post grid.png"
    ];
    var selectedColor = data[0].obs;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.whiteColor,
          title: MyText(
            text: "My Posts",
            fontSizeText: 23.sp,
            fontweightText: FontWeight.w500,
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Get.to(ScreenAddNewPost());
              },
              child: MyText(
                text: "+ Add New",
                fontSizeText: 14.sp,
                fontweightText: FontWeight.w500,
              ).onlyPadding(right: 10),
            )
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
          ),
          bottom: TabBar(
              indicatorColor: AppColor.redColor,
              dividerColor: Colors.transparent,
              unselectedLabelColor: AppColor.subHeadingTextColor,
              labelColor: AppColor.redColor,
              physics: BouncingScrollPhysics(),
              overlayColor: WidgetStatePropertyAll(Colors.transparent),
              tabs: data.map(
                (e) {
                  return Tab(
                    child: Image.asset(
                      "$e",
                      scale: 5,
                    ),
                  );
                },
              ).toList()),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Column(
                children: [
                  Expanded(
                    child: GridView.builder(
                      itemCount: 4,
                      padding: EdgeInsets.only(top: 20),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        return Image.asset("assets/images/post image.png");
                      },
                    ).symmetricPadding(horizontal: 20),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.cyan,
            )
          ],
        ),
      ),
    );
  }
}
