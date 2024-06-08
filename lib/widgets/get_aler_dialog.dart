import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/get_button_style.dart';


AlertDialog alertDialogAddEndereco(
    {required String title,
    required String content,
    required String textButton,
    required BuildContext context}) {
  return AlertDialog(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontFamily: 'Kadwa',
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: kColorTextPrimary,
          ),
        ),
      ],
    ),
    content: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          content,
          style: const TextStyle(
            fontFamily: 'Kadwa',
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ),
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: getStyleButton(width: 125, height: 44),
            child: Text(
              textButton,
              style: const TextStyle(
                fontFamily: 'kadwa',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      )
    ],
  );
}
