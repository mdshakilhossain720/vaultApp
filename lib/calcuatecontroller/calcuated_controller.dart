
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vaultapp/utils/color.dart';
import 'package:vaultapp/utils/con_fig.dart';

class ClacuatedController extends GetxController{
  List <String>Button=[
    '',
    '',
    'AC',
    'C',
    '7',
    '8',
    '9',
    '/',
    '5',
    '6',
    '*',
    '2',
    '3',
     '.',
    '=',
  ];

  Color getButtonText(String text){
    if(text=='AC'|| text=='C'|| text=='/'|| text=='='||text=='.'){
      return AppColor.primary;
    }else{
      return Colors.white;
    }
  }

  Color getButtonBg (String text){
    if(text=='='){
      return AppColor.primary;
    }else{
      return AppColor.secondary;
    }
  }
  RxString  userInput=RxString('');
  RxString result=RxString('0');
}