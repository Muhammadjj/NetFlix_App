import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

AppBar activityAppBar({required String appBarText}) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: AutoSizeText(
      appBarText,
      style: const TextStyle(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.w400),
    ),
    centerTitle: true,
  );
}
