import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix_app/Screen/Splash_Screen/splash_screen_widget.dart';
import '../../Components/Colour_files/all_screen_color.dart';
import '../Validation_Pages/Animated_Circle_Login_Ui/Login_Page/animated_login_ui_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 3900), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const AnimatedLoginScreenUI(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: allScreenBackgroundColors,
      body: const Center(
        child: SplashScreenText(),
      ),
    );
  }
}
