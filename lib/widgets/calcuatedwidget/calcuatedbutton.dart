
import 'package:flutter/material.dart';

import '../../calcuatecontroller/calcuated_controller.dart';
import '../../utils/color.dart';

Container CalcuatedButton(String button, ClacuatedController controller) {
  return Container(
    decoration: BoxDecoration(
        color: AppColor.secondary,
        borderRadius: BorderRadius.circular(20),
        border: Border(
          top: BorderSide(
            color: Colors.white,
            width: 1.5,

          ), bottom: BorderSide(
          color: Colors.white,
          width: 0,

        ), left: BorderSide(
          color: Colors.white,
          width: 0,

        ), right: BorderSide(
          color: Colors.white,
          width: 0,

        ),

        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.5),
            blurRadius: 10,
            spreadRadius: 5,
          )
        ]
    ),
    child: Text(button,style: TextStyle(fontSize: 40,color:controller.getButtonText(button)),),
  );
}