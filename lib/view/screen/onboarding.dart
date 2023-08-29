import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn/constant/images.dart';
import 'package:learn/controller/onboarding_controller.dart';
import 'package:learn/view/widget/onboarding/custom_botton.dart';
import 'package:learn/view/widget/onboarding/dotsonboarding.dart';
import 'package:learn/view/widget/onboarding/next_botton.dart';
import 'package:learn/view/widget/onboarding/onboarding.dart';

import '../../constant/colors.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingController());
    return GetBuilder<OnBoardingController>(
      builder: (controller) {
        return Scaffold(
          body: Scaffold(
            body: Stack(
              children: [
                OnBoardingWidge(),
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      DotsOnBoarding(),
                      const SizedBox(height: 15,),
                      CustomNextBotton(
                        onTap: () {
                          setState(() {
                            print("Ok");
                            controller.isClick = true;
                            Future.delayed(Duration(milliseconds: 400),
                            (){
                              controller.isClick = false;
                            }
                            );
                          });
                        },
                      ),
                      const SizedBox(height: 15,),
                      CustomBotton(
                        image: AppImage.bottonSkip, 
                        onTap: () {
                          
                        },
                      ),
                      const SizedBox(height: 15,),
                    ],
                  ),
                ),
              ],
            )
          )
        );
      }
    );
  }
}