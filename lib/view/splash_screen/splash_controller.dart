import 'package:get/get.dart';
import 'package:taste_now/utils/routes/routes_name.dart';

class SplashController extends GetxController {
  navigation() {
    Future.delayed(
      Duration(seconds: 4),
      () => Get.offNamedUntil(RoutesName.homeScreen, (route) => false),
    );
  }

  @override
  void onInit() {
    // TODO: implement onInit
    navigation();
    super.onInit();
  }
}
