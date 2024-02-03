import 'package:flutter/material.dart';
import 'package:vaultapp/utils/color.dart';
import 'package:vaultapp/widgets/custom_app_bar.dart';
class CalcuatorScreen extends StatelessWidget {
  const CalcuatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: CustomAppBar(
    ),
      
      body: Center(
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
                    Text("500",style: TextStyle(fontSize: 30,
                        color: Colors.white,fontWeight: FontWeight.bold),),
                    Text("500",style: TextStyle(fontSize: 40,
                        color: Colors.white,fontWeight: FontWeight.bold),),
                  ],
                )
              ],
            ),

            GridView.builder(
              shrinkWrap: true,
                primary: false,
                itemCount: 10,

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 4), itemBuilder: (context,index){
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
              );
            })
          ],
        ),
      ),
    );
  }
}
