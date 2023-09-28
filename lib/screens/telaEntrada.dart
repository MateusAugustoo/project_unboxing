import 'package:flutter/material.dart';
import 'package:projeto_integrador/screens/screensLoginAndCadastro/telaCadastro.dart';
import 'package:projeto_integrador/screens/screensLoginAndCadastro/telaLogin.dart';
import 'package:projeto_integrador/theme/button.dart';
import 'package:projeto_integrador/theme/colors.dart';

class TelaDeEntrada extends StatefulWidget {
  const TelaDeEntrada({super.key});

  @override
  State<TelaDeEntrada> createState() => _TelaDeEntradaState();
}

class _TelaDeEntradaState extends State<TelaDeEntrada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return Column(
      children: [
        const SizedBox(
          height: 82,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 82,
            ),
            Text(
              'Bem Vindo',
              style: TextStyle(
                  fontFamily: 'Kadwa',
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        const SizedBox(
          height: 38,
        ),
        const Image(
          image: AssetImage('assets/png/logo.png'),
        ),
        const SizedBox(
          height: 27,
        ),
        const Text(
          'Unboxing',
          style: TextStyle(
              color: kSecundaryColor,
              fontFamily: 'Kadwa',
              fontSize: 30,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 71,
        ),
        Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
            )
          ]),
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const TelaLogin()),
                );
              },
              style: textButtonOpenStyle,
              child: const Text(
                'Entrar',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Kadwa',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
            )
          ]),
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const TelaCadastro()),
                );
              },
              style: textButtonCadastroStyle,
              child: const Text(
                'Cadastrar',
                style: TextStyle(
                    color: kSecundaryColor,
                    fontFamily: 'Kadwa',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
        ),
      ],
    );
  }
}
