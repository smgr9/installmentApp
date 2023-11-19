import 'package:first_temp/Features/Splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  static String id = "/splash";
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewbody(),
    );
  }
}
