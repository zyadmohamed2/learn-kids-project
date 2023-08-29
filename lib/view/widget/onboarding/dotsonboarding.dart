import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn/constant/colors.dart';
import 'package:learn/controller/onboarding_controller.dart';
import 'package:learn/data/datasource/static/onboarding.dart';

class DotsOnBoarding extends StatelessWidget {
  DotsOnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              onBoardingList.length,
              (index) {
                return AnimatedContainer(
                width: controller.curentPage == index? 27: 15,
                height: 15,
                margin: EdgeInsets.only(left: 10),
                duration: const Duration(milliseconds: 700),
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: controller.curentPage == index? controller.colors[index]: AppColors.grey,
                  borderRadius: BorderRadius.circular(20)
                ),
              );
              },
            )
          ],
        );
      }
    );
  }
}