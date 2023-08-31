import 'package:app_music/app/config/app_config.dart';
import 'package:app_music/app/routes/app_pages.dart';
import 'package:app_music/app/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const AppsMusic());
}

class AppsMusic extends StatefulWidget {
  const AppsMusic({Key? key}) : super(key: key);

  @override
  State<AppsMusic> createState() => _AppmusicState();
}

class _AppmusicState extends State<AppsMusic> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConfig.appName,
      theme: AppThemes.appTheme,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
