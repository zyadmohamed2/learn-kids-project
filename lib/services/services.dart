import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServic extends GetxService{
  late SharedPreferences sharedPreferences;
  Future<MyServic> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}  
  initialServiecs() async {
  await Get.putAsync(() => MyServic().init(),);
}