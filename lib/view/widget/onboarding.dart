import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn/constant/images.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_svg/svg.dart';
class OnBoardingWidge extends StatelessWidget {
  const OnBoardingWidge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540.h,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Image.asset(
              AppImage.supImage1,
            ),
          ),
          Container(
            width: 294.h,
            child: Lottie.asset(AppImage.gifOnboarding1,),
          ),
          Container(
            child: SvgPicture.asset(AppImage.onboardingText1)
          ),
        ],
      ),
    );
  }
}