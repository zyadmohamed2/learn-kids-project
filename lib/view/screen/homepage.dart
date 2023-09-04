import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn/constant/images.dart';
import 'package:learn/controller/homepage_controller.dart';
import 'package:learn/view/widget/homepage/cards.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageController());
    return GetBuilder<HomePageController>(
      builder: (controller) {
        return Scaffold(
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Stack(
                children: [
                  SizedBox(
                    child: Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Image.asset(AppImage.backgroundHomepage, fit: BoxFit.cover,),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 40),
                          height: 50,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                child: Image.asset(AppImage.menuIcon),
                              ),
                              Container(
                                width: 200,
                                alignment: Alignment.center,
                                height: 50,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 20,
                                      right: 15,
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 15,
                                            width: 170,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                          ),
                                            Container(
                                              width: 60,
                                              height: 15,
                                              decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius: BorderRadius.circular(10)
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        left: -10,
                                        child: Image.asset(AppImage.lionCharacterIcon),
                                      ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                child: Image.asset(AppImage.settingIcon),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 120,
                    child: Image.asset(AppImage.getReadyImage),
                  ),
                  const Cards(),
                ],
              ),
            ],
          ),
        );
      }
    );
  }
}