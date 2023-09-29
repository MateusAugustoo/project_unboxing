import 'package:flutter/material.dart';

mostraSnakBar(
    {required BuildContext context,
    required String mensagem,
    bool isError = true}) {
  SnackBar snackBar = SnackBar(
    content: Text(mensagem),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
