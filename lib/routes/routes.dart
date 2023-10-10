import 'package:flutter/material.dart';
import 'package:projeto_integrador/modules/home/tela_home.dart';
import 'package:projeto_integrador/modules/telaCadastro/tela_cadastro.dart';
import 'package:projeto_integrador/modules/telaEntrada/tela_entrada.dart';
import 'package:projeto_integrador/modules/telaLogin/tela_login.dart';

class Routes extends StatelessWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const TelaEntrada(),
        '/ScreenLogin': (context) => const TelaLogin(),
        '/ScreenCadastro': (context) => const TelaCadastro(),
        '/ScreenHome': (context) => const TelaHome(),
      },
    );
  }
}
