import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn/constant/images.dart';
import 'package:learn/controller/onboarding_controller.dart';
import 'package:learn/data/datasource/static/onboarding.dart';
import 'package:learn/view/widget/custom_botton.dart';
import 'package:learn/view/widget/dotsonboarding.dart';
import 'package:learn/view/widget/onboarding.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingController());
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
                  SizedBox(height: 15,),
                  CustomBotton(
                    image: AppImage.bottonNext, 
                    onTap: () {
                      
                    },
                  ),
                  SizedBox(height: 15,),
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
}