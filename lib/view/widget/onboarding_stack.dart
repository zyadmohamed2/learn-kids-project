import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learn/data/datasource/static/onboarding.dart';
import 'package:lottie/lottie.dart';

class OnBoardingStack extends StatelessWidget {
  const OnBoardingStack({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            child: Image.asset(onBoardingList[index].supImage, fit: BoxFit.cover,),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: index == 2? 90: 156,),
                Container(
                  height: 210.h,
                  child: Lottie.asset(onBoardingList[index].gif),
                ),
                Container(
                  height: 160.h,
                  child: SvgPicture.asset(onBoardingList[index].text)
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
