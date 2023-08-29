import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn/constant/colors.dart';
import 'package:learn/controller/onboarding_controller.dart';

class CustomNextBotton extends GetView<OnBoardingController> {
  const CustomNextBotton({super.key, this.onTap,});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 300,
        height: 48,
        decoration: BoxDecoration(
          color: AppColors.nextBotton,
          borderRadius: BorderRadius.circular(10),
          boxShadow: controller.isClick? const []:[
            BoxShadow(color: AppColors.shadowColor, offset: Offset(0,6), blurRadius: 0, spreadRadius: 1),
          ]
        ),
        child: const Center(
          child: Text(
              "Next",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              )
          ),
        ),
      ),
    );
  }
}
