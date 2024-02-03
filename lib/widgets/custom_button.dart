import 'package:flutter/material.dart';
import 'package:vaultapp/utils/color.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final Color? backgroundColor;
  const CustomButton({super.key, required this.title, required this.onTap, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.sizeOf(context);

    return InkWell(
      onTap:  onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        width:size.width,
        decoration: BoxDecoration(
          color:backgroundColor ?? AppColor.primary,
          borderRadius: BorderRadius.circular(40),

        ),
        child: Center(
          child: Text(title,style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white,
          ),),
        ),
      ),
    );
  }
}
