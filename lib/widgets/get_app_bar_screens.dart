import 'package:flutter/material.dart';
import 'package:projeto_integrador/theme/colors.dart';

Widget getAppBarScreens({required String title}) {
  return Container(
    decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: kColorTextPrimary))),
    child: AppBar(
      elevation: 0,
      backgroundColor: kColorTextTertiary,
      centerTitle: true,
      title: Text(
        (title),
        style: const TextStyle(
            fontFamily: 'Kadwa',
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: kColorTextSecondary),
      ),
      iconTheme: const IconThemeData(color: kColorTextSecondary, size: 35),
    ),
  );
}
