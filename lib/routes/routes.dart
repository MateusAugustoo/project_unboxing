import 'package:flutter/material.dart';
import 'package:projeto_integrador/views/anuncios/tela_anunio.dart';
import 'package:projeto_integrador/views/anuncios/tela_gera_anucio.dart';
import 'package:projeto_integrador/views/home/tela_home.dart';
import 'package:projeto_integrador/views/telaCadastro/tela_cadastro.dart';
import 'package:projeto_integrador/views/telaEntrada/tela_entrada.dart';
import 'package:projeto_integrador/views/telaLogin/tela_login.dart';


class Routes extends StatelessWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/ScreenHome',
      routes: {
        '/': (context) => const TelaEntrada(),
        '/ScreenLogin': (context) => const TelaLogin(),
        '/ScreenCadastro': (context) => const TelaCadastro(),
        '/ScreenHome': (context) => const TelaHome(),
        '/ScreenAnuncio': (context) => const TelaAnuncio(),
        '/ScreenGeraAnuncio': (context) => const GeraAnucio(),
      },
    );
  }
}
