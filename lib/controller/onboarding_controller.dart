import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn/constant/colors.dart';
import 'package:learn/data/datasource/static/onboarding.dart';
import 'package:learn/services/services.dart';

class OnBoardingController extends GetxController{
  List<Color> colors = [
    AppColors.onBoarding1,
    AppColors.onBoarding2,
    AppColors.onBoarding3,
  ];
  int curentPage = 0;
  late PageController pageController;
  MyServic myServic = Get.find();
  nextBotton(){
    curentPage++;
    if (curentPage == onBoardingList.length) {
      myServic.sharedPreferences.setString("onBoarding", "ok");
    }
    else{
      pageController.animateToPage(curentPage++, duration: const Duration(milliseconds: 700), curve: Curves.easeIn);
    }
  }
  onPageChanged(int index){
    curentPage = index;
    update();
  }
  // color(int index, int Page){
  //   if (index == Page) {
  //     if (page == 1) {
        
  //     }
  //     else if(page == 2)
  //   }
  // }
  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}