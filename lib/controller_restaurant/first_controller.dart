import 'package:get/get.dart';

class FirstController extends GetxController {
  var isTrue = true.obs;
  var isTrueSignUp = true.obs;
  var isTrueSignUpConfirm = true.obs;
  var firstSwitch = false.obs;
  var secondSwitch = true.obs;
  var thirdSwitch = true.obs;

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

  var price = [
    "€190.50",
    "€200.00",
    "€120.00",
    "€230.50",
  ];
  var rattingValue = 0.0.obs;

  var mainImage = [
    "assets/images/booking image.png",
    "assets/images/ranking image 2.png",
    "assets/images/ranking image 3.png",
    "assets/images/ranking image 2.png",
    "assets/images/ranking image 3.png"
  ];

  var smallLogo = [
    "assets/images/booking logo.png",
    "assets/images/mamuat.png",
    "assets/images/toyata.png",
    "assets/images/mamuat.png",
    "assets/images/toyata.png",
  ];

  var mainText = [
    "Fine Dining",
    "Bree Cafe",
    "Bree Cafe",
    "Bree Cafe",
    "Bree Cafe",
  ];

  var ratting = [
    "4.7",
    "4.7",
    "4.6",
    "4.5",
    "4.5",
  ];
  var endText = [
    "Open",
    "Open",
    "Open",
    "Open",
    "Closed",
  ];
  var position = [
    "5th",
    "1th",
    "2th",
    "3th",
    "4th",
  ];

  var isTrueValue = true.obs;
  var selectedIndex = 0.obs;


}
