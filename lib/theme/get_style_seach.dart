import 'package:flutter/material.dart';

InputDecoration getStyleSeach = const InputDecoration(
  floatingLabelBehavior: FloatingLabelBehavior.never,
  contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 10),
  prefixIcon: Icon(
    Icons.search_rounded,
  ),
  label: Text(
    'Procurar Produto...',
    style: TextStyle(
        fontFamily: 'Kadwa', fontSize: 15, fontWeight: FontWeight.w300),
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20),
    ),
  ),
);
