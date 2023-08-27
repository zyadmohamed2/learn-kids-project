import 'package:flutter/material.dart';
import 'package:learn/constant/images.dart';
import 'package:learn/data/datasource/static/onboarding.dart';
import 'package:learn/view/widget/onboarding.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Stack(
          children: [
            const OnBoardingWidge(),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 50,
                    width: 80,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: onBoardingList.length,
                      itemBuilder: (context, index) {
                        return AnimatedContainer(
                          margin: EdgeInsets.only(left: 10),
                          duration: const Duration(milliseconds: 700),
                          padding: const EdgeInsets.all(7),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red
                          ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(AppImage.bottonNext)
                  ),
                  const SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(AppImage.bottonSkip)
                  ),
                  const SizedBox(height: 10,),
                ],
              ),
            ),
          ],
        )
      )
    );
  }
}