import 'package:get/get.dart';
import 'package:taste_now/view/profile_page/profile_controller.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<ProfileController>(ProfileController());
  }
}
