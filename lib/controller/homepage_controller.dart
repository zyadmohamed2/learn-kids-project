import 'package:get/get.dart';
import 'package:learn/constant/images.dart';

class HomePageController extends GetxController{
  List cards = [
    AppImage.arbicLetter,
    AppImage.englishLetter,
    AppImage.arabicNumber,
    AppImage.englishNumber,
  ];
  List page = [
    "arbicLetter",
    "englishLetter",
    "arabicNumber",
    "englishNumber",
  ];
  goToExample(int i){
    print(page[i]);
  }
}