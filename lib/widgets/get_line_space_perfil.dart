import 'package:flutter/material.dart';
import 'package:projeto_integrador/theme/colors.dart';

Container getLineSpacePerfil() {
  return Container(
    width: 353,
    margin: const EdgeInsets.only(top: 25, bottom: 25),
    decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: kColorTextSecondary))),
  );
}
