import 'package:flutter/material.dart';
import '../../widgets/get_app_bar_screens.dart';
import '../../widgets/get_drawer.dart';

class TelaCompras extends StatefulWidget {
  const TelaCompras({super.key});

  @override
  State<TelaCompras> createState() => _TelaCompState();
}

class _TelaCompState extends State<TelaCompras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getDrawer(context),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(91),
        child: getAppBarScreensSecondary(title: 'Compras'),
      ),
      body: Container(),
    );
  }
}