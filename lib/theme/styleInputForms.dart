import 'package:flutter/material.dart';
import 'package:projeto_integrador/theme/colors.dart';

InputDecoration getInputDecoration({required String textlabel, required Icon icon}) {
  return InputDecoration(
    prefixIcon: (icon),
    prefixIconColor: kTextColor,
    labelText: (textlabel),
    labelStyle: const TextStyle(color: kTextColor),
    border:
        const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
    enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: kSecundaryColor)),
  );
}

