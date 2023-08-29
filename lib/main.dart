import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:learn/services/services.dart';
import 'package:learn/view/screen/homepage.dart';
void main() {
  runApp(const MyApp());
  initialServiecs();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height),
      builder: (context, child) {
        print(MediaQuery.sizeOf(context).width);
        print(MediaQuery.sizeOf(context).height);
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const HomePage()
        );
      },
    );
  }
}
