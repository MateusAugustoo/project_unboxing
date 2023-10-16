import 'package:flutter/material.dart';

Widget getAppBarLoginCadastro(BuildContext context, {required String title}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    toolbarHeight: 70,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.black,
        size: 30,
      ),
    ),
    title: Text(
      (title),
      style: const TextStyle(
          fontFamily: 'Kadwa',
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Colors.black),
    ),
  );
}
