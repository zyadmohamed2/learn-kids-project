import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn/controller/homepage_controller.dart';
import 'package:learn/view/screen/home_screen.dart';
import 'package:learn/view/screen/letters_screen.dart';

class Cards extends GetView<HomePageController> {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(top: 370),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ...List.generate(
              controller.cards.length, (index) {
                return GestureDetector(
                  onTap: () {
                    controller.goToExample(index);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Image.asset(controller.cards[index]),
                  ),
                );
              },
            )
          ],
        ),
    );
  }
}