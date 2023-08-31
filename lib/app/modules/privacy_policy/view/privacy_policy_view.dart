import 'package:app_music/app/modules/home/view/home_view.dart';
import 'package:app_music/app/utils/main_applayout.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyAppLayout(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
          child: const Text('ini adlaaah privacy policy kembali ke home?'),
        ),
      ),
    );
  }
}
