import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/controller/app_controller.dart';
import 'package:get/get.dart';

import '../../helper/constant.dart';
import 'layout_item.dart';

class LayoutPostNearMe extends StatelessWidget {
  const LayoutPostNearMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppControllerApp());
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemLayout(
                appController: controller,
                Index: index,
              );
            },
            itemCount: 2,
          ),
        ));
  }
}
