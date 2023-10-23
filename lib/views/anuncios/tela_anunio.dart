import 'package:flutter/material.dart';
import 'package:projeto_integrador/theme/colors.dart';
import 'package:projeto_integrador/theme/get_button_style.dart';
import 'package:projeto_integrador/widgets/get_app_bar_screens.dart';
import 'package:projeto_integrador/widgets/get_drawer.dart';

class TelaAnuncio extends StatefulWidget {
  const TelaAnuncio({super.key});

  @override
  State<TelaAnuncio> createState() => _TelaAnuncioState();
}

class _TelaAnuncioState extends State<TelaAnuncio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getDrawer(context),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(95),
          child: getAppBarScreensSecundary(title: 'Anúncio')),
      body: _getBody(),
      backgroundColor: kBackGroundColor,
    );
  }

  Widget _getBody() {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 353,
                height: 41,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/ScreenGeraAnuncio');
                    },
                    style: getButtonGeraAnuncioStyle,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Gerar Anúncio',
                          style: TextStyle(
                              fontFamily: 'Kadwa',
                              fontSize: 20,
                              color: kColorTextSecondary,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.add_rounded,
                          color: Colors.black,
                          size: 30,
                        )
                      ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 27,
          ),
          const Text(
            'Produtos Aúnciados:',
            style: TextStyle(
                fontFamily: 'Kadwa', fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      ),
    );
  }
}
