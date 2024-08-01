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

  var imagesTwo = [
    "assets/images/image no 1.png",
    "assets/images/image no 2.png",
  ];

  var listTextMain = [
    "Special Bowl",
    "Italian Platter",
    "Vege Salad",
    "Chinese Bowl",
  ];

  var listTextMainTwo = [
    "Special Bowl",
    "Italian Platter",
  ];

  var listTextSub = [
    "Special Bowl",
    "Italian Platter",
    "Vege Salad",
    "Chinese Bowl",
  ];

  var listTextSubTwo = [
    "Special Bowl",
    "Italian Platter",
  ];

  var price = [
    "€190.50",
    "€200.00",
    "€120.00",
    "€230.50",
  ];

  var priceTwo = [
    "€190.50",
    "€200.00",
  ];

  var rattingValue = 0.0.obs;

  var imagesReview = [
    "assets/images/sara.png",
    "assets/images/alex.png",
    "assets/images/Johns.png",
  ];

  var imagesReviewName = [
    "Sara Ali",
    "Alex Costa",
    "Jhons Doe",
  ];

  var selectedIndex = 0.obs;
  var selectedIndexAdd = 0.obs;

  var savedValue = [].obs;

  void addValue(String value) {
    if (savedValue.contains(value)) {
      savedValue.remove(value);
    } else {
      savedValue.add(value);
    }
  }

  void clearSelections() {
    savedValue.clear();
  }

  var title = [
    {
      "title": "Home Delivery",
      "image": "assets/images/hone delivery.png",
    },
    {
      "title": "Take Away",
      "image": "assets/images/take away.png",
    },
  ];
  var selectedText = 0.obs;

  var homeDelieveryText = [
    "Active",
    "Active",
    "Completed",
  ];
}
