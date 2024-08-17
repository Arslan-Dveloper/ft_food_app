import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller_restaurant/first_controller.dart';
import 'package:ft_food_app/custom_widget/my_custom_text.dart';
import 'package:ft_food_app/extention/padding_extention.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/views_restaurant/item/item_order_home_delivery.dart';
import 'package:ft_food_app/views_restaurant/item/item_order_take_away.dart';
import 'package:get/get.dart';

class LayoutOrder extends StatelessWidget {
  const LayoutOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = ["Home Delivery", "Take Away"];
    var selection = [
      "Active Orders",
      "Completed",
      "Cancelled",
    ];

    var selectedItem = selection.first.obs;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.whiteColor,
          centerTitle: true,
          title: MyText(
            text: "Orders",
            fontSizeText: 23.sp,
            fontweightText: FontWeight.w500,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
          ),
          bottom: TabBar(
              labelStyle: TextStyle(
                fontFamily: "poppins",
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
              physics: BouncingScrollPhysics(),
              dividerColor: Colors.transparent,
              overlayColor: WidgetStatePropertyAll(Colors.transparent),
              labelColor: AppColor.redColor,
              indicatorColor: AppColor.redColor,
              unselectedLabelColor: AppColor.textColor,
              unselectedLabelStyle: TextStyle(
                fontFamily: "poppins",
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
              tabs: data.map(
                (e) {
                  return Tab(
                    text: e.toString(),
                  );
                },
              ).toList()),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Column(
                children: [
                  Obx(() {
                    return Align(
                      alignment: Alignment.centerRight,
                      child: DropdownButton(
                        borderRadius: BorderRadius.circular(15),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        underline: SizedBox(),
                        items: selection.map(
                          (e) {
                            return DropdownMenuItem(
                              child: Text(e.toString()),
                              value: e.toString(),
                            );
                          },
                        ).toList(),
                        onChanged: (value) {
                          selectedItem.value = value!;
                        },
                        value: selectedItem.value,
                        icon: Icon(Icons.keyboard_arrow_down_rounded),
                      ),
                    );
                  }),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ItemOrderHomeDelivery();
                      },
                      itemCount: 2,
                    ),
                  )
                ],
              ).symmetricPadding(horizontal: 25),
            ),
            Container(
              child: Column(
                children: [
                  Obx(() {
                    return Align(
                      alignment: Alignment.centerRight,
                      child: DropdownButton(
                        borderRadius: BorderRadius.circular(15),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        underline: SizedBox(),
                        items: selection.map(
                              (e) {
                            return DropdownMenuItem(
                              child: Text(e.toString()),
                              value: e.toString(),
                            );
                          },
                        ).toList(),
                        onChanged: (value) {
                          selectedItem.value = value!;
                        },
                        value: selectedItem.value,
                        icon: Icon(Icons.keyboard_arrow_down_rounded),
                      ),
                    );
                  }),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ItemOrderTakeAway();
                      },
                      itemCount: 3,
                    ),
                  )
                ],
              ).symmetricPadding(horizontal: 25),
            ),
          ],
        ),
      ),
    );
  }
}
