import 'package:get/get.dart';

class ReservationController extends GetxController {
  var numbersSelection = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
  ];
  var selectedItem = 0.obs;
  var switchValue = true.obs;

  var images = [
    "assets/images/image no 1.png",
    "assets/images/image no 2.png",
    "assets/images/image no 3.png",
    "assets/images/image no 4.png",
  ];

  var listTextMain = [
    "Special Bowl",
    "Italian Platter",
    "Vege Salad",
    "Chinese Bowl",
  ];

  var listTextSub = [
    "Special Bowl",
    "Italian Platter",
    "Vege Salad",
    "Chinese Bowl",
  ];
}
