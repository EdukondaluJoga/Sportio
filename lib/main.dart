import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sportio/auth/loginscreen.dart';
import 'package:sportio/constants/constants.dart';

Widget defaultHome = LoginScreen();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 825),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sportio',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
              scaffoldBackgroundColor: kOffWhite,
              iconTheme: const IconThemeData(color: kDark),
              primarySwatch: Colors.grey),
          home: defaultHome,
        );
      },
    );
  }
}
