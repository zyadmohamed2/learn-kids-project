import 'package:flutter/material.dart';
import 'package:learn/constant/images.dart';
import 'package:learn/data/datasource/static/onboarding.dart';

class OnBoardingStack extends StatelessWidget {
  const OnBoardingStack({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            child: Image.asset(onBoardingList[index].supImage),
          ),
        ],
      ),
    );
  }
}
