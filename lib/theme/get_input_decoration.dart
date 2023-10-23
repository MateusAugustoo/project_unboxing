import 'package:flutter/material.dart';
import 'package:projeto_integrador/theme/colors.dart';

InputDecoration getInputDecoration(
    {String? textlabel, IconData? icon}) {
  return InputDecoration(
    contentPadding: const EdgeInsets.only(left: 5),
    prefixIcon: Icon(icon),
    prefixIconColor: kColorIconInput,
    labelText: (textlabel),
    labelStyle: const TextStyle(color: kColorTextPrimary),
    border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
    enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: kColorTextPrimary)),
  );
}

InputDecoration getInputDecorationPassword(
    {required String textlabel, required GestureDetector icon}) {
  return InputDecoration(
    prefixIcon: (icon),
    prefixIconColor: kColorIconInput,
    labelText: (textlabel),
    labelStyle: const TextStyle(color: kColorIconInput),
    border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
    enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: kColorTextPrimary)),
  );
}

InputDecoration getInputDecorationUf() {
  return const InputDecoration(
    contentPadding: EdgeInsets.only(left: 5),
    prefixIconColor: kColorIconInput,
    labelStyle: TextStyle(color: kColorTextPrimary),
    border:
        OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: kColorTextPrimary)),
  );
}
