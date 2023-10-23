import 'package:flutter/material.dart';
import 'package:projeto_integrador/theme/colors.dart';
import 'package:projeto_integrador/theme/get_style_seach.dart';
import 'package:projeto_integrador/widgets/get_drawer.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getDrawer(context),
      backgroundColor: kBackGroundColor,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70), child: _getAppBarHome()),
      body: _getBodyHome(),
    );
  }

  Widget _getAppBarHome() {
    return AppBar(
      automaticallyImplyLeading: true,
      iconTheme: const IconThemeData(
        color: Colors.black,
        size: 35,
      ),
      elevation: 0,
      backgroundColor: kBackGroundColor,
      centerTitle: true,
      title: Row(
        children: [
          SizedBox(
            width: 240,
            height: 41,
            child: TextFormField(
              decoration: getStyleSeach,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
            iconSize: 30,
          ),
        ],
      ),
    );
  }

  Widget _getBodyHome() {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
