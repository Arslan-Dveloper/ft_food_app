import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppControllerApp extends GetxController {
  var images = [
    "assets/images/Tracking & Maps.png",
    "assets/images/Order illustration.png",
    "assets/images/Safe Food.png",
  ];

  var mainText = [
    "Nearby Restaurants",
    "Easy Ordering & Pickup",
    "Seamless Reservations",
  ];

  var subHeadingText = [
    "No need to go far for a good meal. We've listed nearby restaurants.",
    "Skip the line and order ahead for quick pickup or doorstep delivery.",
    "Plan your dining experience effortlessly by reserving a table in advance.",
  ];

  var pageController = PageController();
  var selectedNumber = 0.obs;

  var isTrue = true.obs;
  var isTrueSignUp = true.obs;
  var isTrueSignUpConfirm = true.obs;

  var listImage = [
    "assets/images/list image.png",
    "assets/images/list image.png",
    "assets/images/list image.png",
    "assets/images/list image.png",
  ];

  var smallImage = [
    "assets/images/mamuat.png",
    "assets/images/toyata.png",
    "assets/images/mamuat.png",
    "assets/images/toyata.png",
  ];

  var smallImageText = [
    "Bean's Coffee",
    "Cheezio",
    "Bean's Coffee",
    "Cheezio",
  ];

  var number = [
    "4.7 (120)",
    "4.7 (16)",
    "4.7 (120)",
    "4.7 (16)",
  ];
  var imageTWo = [
    "assets/images/image one.png",
    "assets/images/image two.png",
    "assets/images/image one.png",
    "assets/images/image two.png",
  ];
  var numberKL = [
    "0.5",
    "0.7",
    "0.5",
    "0.7",
  ];

  var numberKM = [
    " km away",
    " km away",
    " km away",
    " km away",
  ];

  var cartImages = [
    "assets/images/cart image one.png",
    "assets/images/cart image two.png",
    "assets/images/cart image three.png",
  ];

  var cartImagesCheckBox = [
    true,
    false,
    true,
  ].obs;

  var cartImagesNumber = [
    0,
    0,
    0,
  ].obs;

  var isTrueCartOne = true.obs;
  var numberOne = 0.obs;

  var bottomSheetImages = [
    "assets/images/bottom sheet one.png",
    "assets/images/bottom sheet two.png",
    "assets/images/bottom sheet 3.png",
  ];

  var bottomSheetText = [
    "Doe Jacson",
    "Kristi Jhons",
    "Sara Deaan",
  ];

  var isTrueBottom = true.obs;

  //  var isTrueBottom = [
  //   true,
  //   false,
  //   true,
  // ].obs;

  var conversationText = [
    "11:20 am",
    "11:20 am",
    "Yesterday",
  ];

  var neraMeImage = [
    "assets/images/near me image.png",
    "assets/images/near me two.png"
  ];
}
