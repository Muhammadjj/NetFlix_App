import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SplashScreenText extends StatelessWidget {
  const SplashScreenText({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
        width: double.infinity,
        child: DefaultTextStyle(
          style: const TextStyle(
            color: Colors.red,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700,
            fontSize: 70.0,
          ),
          child: Center(
            child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText('NETFLIX',speed:const Duration(milliseconds: 300)),
              ],
              totalRepeatCount: 1,
            ),
          ),
        ));
  }
}
