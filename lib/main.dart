import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vaultapp/utils/color.dart';
import 'package:vaultapp/views/SplashScreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColor.secondary,
      ),
          debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

