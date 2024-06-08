import 'package:flutter/material.dart';
import '../../widgets/get_app_bar_screens.dart';
import '../../widgets/get_drawer.dart';

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
        child: getAppBarScreensSecondary(title: 'Carrinho'),
      ),
      body: Container(),
    );
  }
}
