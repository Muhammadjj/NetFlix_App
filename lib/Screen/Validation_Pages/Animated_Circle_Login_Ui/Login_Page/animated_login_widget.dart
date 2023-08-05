import 'dart:ui';
import 'package:flutter/material.dart';
import '../Constant_File/colors_file.dart';

// ** Backup Circle Container Method .
class AnimatedCircleContainer extends StatelessWidget {
  const AnimatedCircleContainer(
      {super.key, required this.height, required this.width});
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          gradient: LinearGradient(
            colors: [containerFirstGradientColor, containerSecondGradientColor],
          )),
    );
  }
}

// ** App Name Text
Widget textAppName({required String text}) {
  return Padding(
    padding: const EdgeInsets.only(top: 35),
    child: Text(
      text,
      style: TextStyle(
          fontSize: 33, fontWeight: FontWeight.bold, color: textColor),
    ),
  );
}

// ** Blur TextField Using BackDropFilters .
class BlurTextField extends StatelessWidget {
  const BlurTextField(
      {super.key,
      this.height ,
      this.width = 300,
      this.prefixIcon,
      this.hintText,
      this.hintStyle, 
      this.validator});

  final double? height;
  final double? width;
  final Widget? prefixIcon;
  final String? hintText;
  final TextStyle? hintStyle;
  final FormFieldValidator<String?>? validator;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: TextFormField(
            validator: validator,
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: prefixIcon,
                filled: true,
                fillColor: Colors.white.withOpacity(0.2),
                hintText: hintText,
                hintStyle: hintStyle,
                errorStyle:const TextStyle(color: Colors.black)),
            cursorHeight: 18,
          ),
        ),
      ),
    );
  }
}

// ** Blur Button's Using BackDropFilters
class BlurButtons extends StatelessWidget {
  const BlurButtons(
      {super.key, this.height = 50, this.width = 100, this.title, this.onTap});
  final double? height;
  final double? width;
  final String? title;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: height,
            width: width,
            color: Colors.white.withOpacity(0.2),
            child: Center(
              child: Text("$title",
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300)),
            ),
          ),
        ),
      ),
    );
  }
}
