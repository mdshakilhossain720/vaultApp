import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vaultapp/utils/con_fig.dart';
import 'package:vaultapp/views/GetStarted/get_started.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Get.to(()=>const GetStared());
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:  Center(
         child: Column(
           children: [
             Image.asset("assets/images/splash.jpg"),
             SizedBox(height: 20),
             Text(AppConfig.appName,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),


           ],
         ),
       ),
    );
  }
}
