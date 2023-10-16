import 'package:flutter/material.dart';
import 'package:projeto_integrador/theme/colors.dart';
import 'package:projeto_integrador/theme/get_button_style.dart';

class TelaEntrada extends StatefulWidget {
  const TelaEntrada({super.key});

  @override
  State<TelaEntrada> createState() => _TelaEntradaState();
}

class _TelaEntradaState extends State<TelaEntrada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(),
    );
  }

  Widget _getBody() {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bem Vindo',
                style: TextStyle(
                    fontFamily: 'Kadwa',
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 38,
          ),
          Image.asset('asset/png/logo.png', width: 128, height: 128),
          const SizedBox(
            height: 27,
          ),
          const Text(
            'Unboxing',
            style: TextStyle(
                fontFamily: 'Kadwa',
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: kColorTextPrimary),
          ),
          const SizedBox(
            height: 73,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/ScreenLogin');
            },
            style: getStyleButtonOpen,
            child: const Text('Entrar'),
          ),
          const SizedBox(
            height: 12,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/ScreenCadastro');
            },
            style: getStyleButtonCadastro,
            child: const Text(
              'Cadastre-se',
              style: TextStyle(color: kColorTextPrimary),
            ),
          ),
        ],
      ),
    );
  }
}
