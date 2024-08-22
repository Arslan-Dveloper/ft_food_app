import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ft_food_app/firebase_options.dart';
import 'package:ft_food_app/helper/constant.dart';
import 'package:ft_food_app/restaurant_detail/main_screen_restaurant.dart';
import 'package:ft_food_app/views/screens/screen_onboarding.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(393, 852),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                animationDuration: Duration(milliseconds: 300),
                elevation: WidgetStatePropertyAll(6.0),
                backgroundColor: WidgetStatePropertyAll(AppColor.redColor),
                overlayColor: WidgetStatePropertyAll(
                  Colors.white.withOpacity(0.2),
                ),
              ),
            ),
            fontFamily: 'poppins',
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: AppColor.textFormFieldBorderColor,
                  )),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: AppColor.textFormFieldBorderColor,
                  )),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: AppColor.textFormFieldBorderColor,
                ),
              ),
            ),
          ),
          home: ScreenOnboarding(),
          //home: MainScreenRestaurant(),
        );
      },
    );
  }
}
