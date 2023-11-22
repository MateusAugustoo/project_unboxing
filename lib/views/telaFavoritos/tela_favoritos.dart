import 'package:flutter/material.dart';
import 'package:projeto_integrador/widgets/get_app_bar_screens.dart';
import 'package:projeto_integrador/widgets/get_drawer.dart';

class TelaFav extends StatefulWidget {
  const TelaFav({super.key});

  @override
  State<TelaFav> createState() => _TelaFavState();
}

class _TelaFavState extends State<TelaFav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getDrawer(context),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(91),
        child: getAppBarScreensSecundary(title: 'Favoritos'),
        ),
        body: Container(),
    );
  }
}