import 'package:get/get.dart';
import 'package:taste_now/utils/routes/routes_name.dart';
import 'package:taste_now/view/home_screen/home_binding.dart';
import 'package:taste_now/view/home_screen/home_screen.dart';
import 'package:taste_now/view/splash_screen/splash_binding.dart';
import 'package:taste_now/view/splash_screen/splash_screen.dart';

class AppRoutes {
  static List<GetPage> getPages = [
    GetPage(name: RoutesName.splashScreen, page: () => const SplashScreen(), binding: SplashBinding()),
    GetPage(name: RoutesName.homeScreen, page: () => const HomeScreen(), binding: HomeBinding()),
  ];
}
