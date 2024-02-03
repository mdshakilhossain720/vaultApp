import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool? leading;
  final List <Widget>? action;
  const CustomAppBar({super.key, this.title, this.leading, this.action});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: leading==true ? IconButton(onPressed: (){
        Get.back();
      }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)):null,
      title: Text(title??'',style: TextStyle(
        color: Colors.white,
      ),),
      actions: action ??[
        IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.white,)),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
