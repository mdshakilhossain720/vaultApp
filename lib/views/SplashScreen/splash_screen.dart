import 'package:flutter/material.dart';
import 'package:vaultapp/utils/con_fig.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:  Center(
         child: Column(
           children: [
             Image.asset("assets/images/splash.jpg"),
             SizedBox(height: 20),
             Text(AppConfig.appName),

           ],
         ),
       ),
    );
  }
}
