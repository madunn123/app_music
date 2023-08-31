import 'package:app_music/app/modules/home/view/home_view.dart';
import 'package:app_music/app/modules/privacy_policy/view/privacy_policy_view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DrawerSidebar {
  static Widget buildDrawer(BuildContext context) {
    return Drawer(
      // Sidebar atau Drawer
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            padding: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Music Apps',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Pecinta Sholawat Habib Syech',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: const Text(
              'Home',
              style: TextStyle(
                color: Color.fromARGB(255, 88, 88, 88),
              ),
            ),
            leading: const Icon(Icons.home),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            onTap: () {
              // Navigator.of(context).pushAndRemoveUntil(
              //     MaterialPageRoute(builder: (context) => HomePage()),
              //     (route) => false);
              Get.to(() => const HomePage());
            },
          ),
          ListTile(
            title: const Text(
              'Rate US',
              style: TextStyle(
                color: Color.fromARGB(255, 88, 88, 88),
              ),
            ),
            leading: const Icon(Icons.star_half_outlined),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
          ListTile(
            title: const Text(
              'More App',
              style: TextStyle(
                color: Color.fromARGB(255, 88, 88, 88),
              ),
            ),
            leading: const Icon(Icons.app_blocking_sharp),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
          ListTile(
            title: const Text(
              'Privacy & Policy',
              style: TextStyle(
                color: Color.fromARGB(255, 88, 88, 88),
              ),
            ),
            leading: const Icon(Icons.privacy_tip_outlined),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            onTap: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (context) => const PrivacyPolicyPage()),
                  (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
