import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:learn/controller/onboarding_controller.dart';
import 'package:learn/data/datasource/static/onboarding.dart';
import 'package:learn/view/widget/onboarding_stack.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_svg/svg.dart';
class OnBoardingWidge extends GetView<OnBoardingController> {
  OnBoardingWidge({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540.h,
      child: PageView.builder(
        onPageChanged: (value) {
          controller.onPageChanged(value);
        },
        controller: controller.pageController,
        itemCount: onBoardingList.length,
        itemBuilder: (context, index) {
          bool isStack = index > 0;
          return isStack? OnBoardingStack(index: index,):Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 150.h,
                child: Image.asset(onBoardingList[index].supImage),
              ),
              Container(
                height: 230.h,
                child: Lottie.asset(onBoardingList[index].gif),
              ),
              Container(
                height: 140.h,
                child: SvgPicture.asset(onBoardingList[index].text)
              ),
            ],
          );
        },
      ),
    );
  }
}