import 'package:flutter/material.dart';

import 'colors.dart';


ButtonStyle getStyleButton(
  {required double width, required double height,}
) {
  return ElevatedButton.styleFrom(
    backgroundColor: kColorTextPrimary,
    minimumSize: Size(width, height),
    textStyle: const TextStyle(
        fontFamily: 'Kadwa',
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: kColorTextSecondary),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          color: kColorTextTertiary,
          width: 2,
    ),
  ),
);
}

final ButtonStyle getStyleButtonCadastro = ElevatedButton.styleFrom(
    backgroundColor: kColorTextTertiary,
    minimumSize: const Size(167, 55),
    textStyle: const TextStyle(
      fontFamily: 'Kadwa',
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          color: kColorTextPrimary,
          width: 2,
    ),
  ),
);

final ButtonStyle getButtonGeraAnuncioStyle = ElevatedButton.styleFrom(
  backgroundColor: Colors.white,
  minimumSize: const Size(353, 41),
);
