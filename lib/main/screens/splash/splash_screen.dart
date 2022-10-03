import 'package:flutter/material.dart';
import 'package:e_commerce_ui/main/screens/splash/components/body.dart';
import 'package:e_commerce_ui/main/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: const Body(),
    );
  }
}
