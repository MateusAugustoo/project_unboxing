import 'package:flutter/material.dart';
import 'package:projeto_integrador/theme/get_style_select_perfil.dart';

GestureDetector getSelectOpcPerfil({required String text, required IconData iconSelect, required double sizedBox, void Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Row(
      children: [
        Icon(
          (iconSelect),
          size: 30,
        ),
        SizedBox(
          width: sizedBox
        ),
        Text(
          (text),
          style: getStyleSelectPerfil,
        )
      ],
    ),
  );
}
