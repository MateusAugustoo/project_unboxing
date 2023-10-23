import 'package:flutter/material.dart';
import 'package:projeto_integrador/widgets/get_app_bar_screens.dart';
import 'package:projeto_integrador/widgets/get_drawer.dart';

class TelaCard extends StatefulWidget {
  const TelaCard({super.key});

  @override
  State<TelaCard> createState() => _TelaCardState();
}

class _TelaCardState extends State<TelaCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getDrawer(context),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(91),
        child: getAppBarScreensSecundary(title: 'Carrinho'),
      ),
      body: Container(),
    );
  }
}
