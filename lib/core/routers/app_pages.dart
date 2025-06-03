import 'package:get/get.dart';
import 'package:recipt_app/features/home/views/home_screen.dart';
import '../../features/home/views/splash_screens.dart';
import 'app_router.dart';




// AppPages – Nơi ánh xạ giữa tên route và Widget tương ứng
class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.splash, page: () => SplashScreen()),
    GetPage(name: AppRoutes.home, page: () => HomeScreen()),
  ];
}
