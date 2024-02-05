import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vaultapp/utils/color.dart';
import 'package:vaultapp/views/SplashScreen/splash_screen.dart';
import 'package:vaultapp/views/bindings/all_bindings.dart';

void main() {
  AllBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColor.backColor,
      ),
          debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

