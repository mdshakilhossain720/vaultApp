import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vaultapp/utils/color.dart';
import 'package:vaultapp/widgets/custom_app_bar.dart';

import '../../calcuatecontroller/calcuated_controller.dart';
import '../../widgets/calcuatedwidget/calcuatedbutton.dart';
class CalcuatorScreen extends StatelessWidget {
  const CalcuatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: CustomAppBar(
    ),
      
      body: GetBuilder<ClacuatedController>(
        builder: (controller) {
          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('please Enter your pascode',style: TextStyle(color: Colors.white.withOpacity(.5)),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Text(controller.userInput.value,style: TextStyle(fontSize: 30,
                            color: Colors.white,fontWeight: FontWeight.bold),),
                        Text(controller.result.value,style: TextStyle(fontSize: 40,
                            color: Colors.white,fontWeight: FontWeight.bold),),
                      ],
                    )
                  ],
                ),

                GridView.builder(
                  shrinkWrap: true,
                    primary: false,
                    itemCount: controller.Button.length,

                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 4), itemBuilder: (context,index){
                    final button=ClacuatedController().Button[index];
                  return button.isEmpty?SizedBox(): CalcuatedButton(button, controller);
                })
              ],
            ),
          );
        }
      ),
    );
  }

}
