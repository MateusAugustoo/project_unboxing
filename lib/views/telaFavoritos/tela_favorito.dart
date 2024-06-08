import 'package:flutter/material.dart';
import '../../widgets/get_app_bar_screens.dart';
import '../../widgets/get_drawer.dart';

class TelaFavoritos extends StatefulWidget {
  const TelaFavoritos({super.key});

  @override
  State<TelaFavoritos> createState() => _TelaFavState();
}

class _TelaFavState extends State<TelaFavoritos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getDrawer(context),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(91),
        child: getAppBarScreensSecondary(title: 'Favoritos'),
        ),
        body: Container(),
    );
  }
}