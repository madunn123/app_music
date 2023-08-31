import 'package:app_music/app/modules/home/view/home_view.dart';
import 'package:app_music/app/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  AppPages._();
  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
    ),
  ];
}
