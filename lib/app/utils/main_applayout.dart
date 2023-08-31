import 'package:app_music/app/config/app_config.dart';
import 'package:app_music/app/utils/drawer_sidebar.dart';
import 'package:flutter/material.dart';

class MyAppLayout extends StatelessWidget {
  final Widget body;
  const MyAppLayout({required this.body, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppConfig.appName,
          style: TextStyle(fontSize: 24),
        ),
        toolbarHeight: 70,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              debugPrint('hello world');
            },
            icon: const Icon(Icons.share),
          ),
          IconButton(
              onPressed: () {
                debugPrint('hallo jancuk');
              },
              icon: const Icon(Icons.more_vert))
        ],
      ),
      drawer: DrawerSidebar.buildDrawer(context),
      body: body,
    );
  }
}
