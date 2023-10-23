import 'package:flutter/material.dart';
import 'package:projeto_integrador/theme/colors.dart';

Widget getAppBarScreensSecundary({required String title}) {
  return Column(
    children: [
      AppBar(
        backgroundColor: kBackGroundColor,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: kColorTextSecondary,
          size: 30,
        ),
        title: Text(
          (title),
          style: const TextStyle(
              fontFamily: 'Kadwa',
              color: kColorTextSecondary,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
      const Divider(
        color: kColorTextPrimary,
        height: 35,
        indent: 20,
        endIndent: 20,
      )
    ],
  );
}
