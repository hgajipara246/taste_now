import 'package:get/get.dart';
import 'package:taste_now/view/home_screen/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
  }
}
