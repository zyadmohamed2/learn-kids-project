import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: Stack(
          children: [
            ListView.builder(
              itemBuilder: (context, index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 700),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                );
              },
            ),
            Column(
              children: [
                Container(
                  child: Stack(
                    children: [
                      
                    ],
                  ),
                ),
                Container(),
                Text("data"),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}