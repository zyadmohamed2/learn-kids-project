import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn/constant/images.dart';
import 'package:learn/data/datasource/static/onboarding.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_svg/svg.dart';
class OnBoardingWidge extends StatelessWidget {
  const OnBoardingWidge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 620.h,
      // color: Colors.red,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: PageView(
        children: [
          ...List.generate(
            onBoardingList.length, 
            (index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Image.asset(onBoardingList[index].supImage),
                  ),
                  Container(
                    width: 294.h,
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