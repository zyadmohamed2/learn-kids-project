import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:learn/controller/onboarding_controller.dart';
import 'package:learn/data/datasource/static/onboarding.dart';
import 'package:learn/view/widget/onboarding_stack.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_svg/svg.dart';
class OnBoardingWidge extends GetView<OnBoardingController> {
  const OnBoardingWidge({super.key});
  final bool isStack;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540.h,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: PageView(
        onPageChanged: (value) {
          controller.onPageChanged(value);
        },
        controller: controller.pageController,
        children: [
          ...List.generate(
            onBoardingList.length, 
            (index) {
              return isStack? OnBoardingStack(): 
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset(onBoardingList[index].supImage),
                  ),
                  Container(
                    child: Lottie.asset(onBoardingList[index].gif),
                  ),
                  Container(
                    child: SvgPicture.asset(onBoardingList[index].text)
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}