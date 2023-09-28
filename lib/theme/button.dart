import 'package:flutter/material.dart';
import 'package:projeto_integrador/theme/colors.dart';

final ButtonStyle textButtonOpenStyle = TextButton.styleFrom(
 backgroundColor: kSecundaryColor,
 minimumSize: const Size(167, 55),
 shape: RoundedRectangleBorder(
   borderRadius: BorderRadius.circular(10),
   side: const BorderSide(color: Colors.white, width: 2),
 ),
);

final ButtonStyle textButtonCadastroStyle = TextButton.styleFrom(
 backgroundColor: kPrimaryColor,
 minimumSize: const Size(167, 55),
 shape: RoundedRectangleBorder(
   borderRadius: BorderRadius.circular(10),
   side: const BorderSide(color: kSecundaryColor, width: 2),
 ),
);
