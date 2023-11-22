import 'package:flutter/material.dart';
import 'package:projeto_integrador/widgets/get_app_bar_screens.dart';
import 'package:projeto_integrador/widgets/get_drawer.dart';

class TelaComp extends StatefulWidget {
  const TelaComp({super.key});

  @override
  State<TelaComp> createState() => _TelaCompState();
}

class _TelaCompState extends State<TelaComp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getDrawer(context),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(91),
        child: getAppBarScreensSecundary(title: 'Compras'),
      ),
      body: Container(),
    );
  }
}