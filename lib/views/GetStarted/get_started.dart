import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:vaultapp/utils/color.dart';
import 'package:vaultapp/utils/con_fig.dart';
import 'package:vaultapp/widgets/custom_button.dart';

import '../Calcautator/calcuator_scteen.dart';
class GetStared extends StatelessWidget {
  const GetStared({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.asset("assets/images/splash.jpg",height: 250,width: 250,),
            Text("WELL COME To${AppConfig.appName}",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            Text("Hide all your private behind in securet calcuate",style: TextStyle(
              color: Colors.white,
            ),),
            SizedBox(height: 20,),
            Container(
              height: size.height*4,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),

              ),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                              Text("Privacy and Permission Notics",
                                style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 16),),
                          SizedBox(height: 10,),
                          Text('''
                          The spelling mistakes in the text had been highlighted in green.
                      The text is finished, but the pictures will have to be pasted in later.
                      You need to demonstrate to the examiners that you have more than a literal understanding of the text.
                      The students are reading "Lord of the Flies" as one of their set texts this year.
                      At this point in the speech, the minister departed from his prepared text
                          ''',textAlign: TextAlign.start,style: TextStyle(color: Colors.white),),
                          SizedBox(height: 8,),
                          RichText(text: TextSpan(
                            text: 'By contuine to use ${AppConfig.appName},your agree to our',
                            children: [
                              TextSpan(
                                text: 'Privacy Policy',style: TextStyle(
                                fontSize: 12,
                                color: AppColor.primary,
                                fontWeight: FontWeight.w300,
                              )
                              ),
                              TextSpan(
                                  text: 'and',style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              )
                              ),
                              TextSpan(
                                  text: 'Term of services',style: TextStyle(
                                fontSize: 12,
                                color: AppColor.primary,
                                fontWeight: FontWeight.w300,
                              )
                              )
                            ]
                          ))

                        ],
                      ),
                      Column(
                        children: [
                          CustomButton(title: 'Agree & Continue', onTap: () {},),

                          CustomButton(title: 'Agree & Continue', onTap: () {
                            Get.defaultDialog(
                              backgroundColor: AppColor.secondary,
                              title: 'If disagree tou will not able to use${AppConfig.appName}',
                              titleStyle: TextStyle(
                                color: Colors.white
                              ),
                              content: RichText(text: TextSpan(
                                  text: 'By contuine to use ${AppConfig.appName},your agree to our',
                                  children: [
                                    TextSpan(
                                        text: 'Privacy Policy',style: TextStyle(
                                      fontSize: 12,
                                      color: AppColor.primary,
                                      fontWeight: FontWeight.w300,
                                    )
                                    ),
                                    TextSpan(
                                        text: 'and',style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                    )
                                    ),
                                    TextSpan(
                                        text: 'Term of services',style: TextStyle(
                                      fontSize: 12,
                                      color: AppColor.primary,
                                      fontWeight: FontWeight.w300,
                                    )
                                    )
                                  ]
                              )),
                              actions: [
                                TextButton(onPressed: (){
                                  SystemNavigator.pop();
                                }, child: Text("Quit")),
                                TextButton(onPressed: (){
                                  Get.offAll(CalcuatorScreen());
                                }, child: Text('COntinue')),

                              ]
                            );

                          },
                          backgroundColor: Colors.transparent,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
