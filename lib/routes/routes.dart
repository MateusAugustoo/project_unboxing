import 'package:flutter/material.dart';
import '../views/anuncios/tela_anunio.dart';
import '../views/anuncios/tela_gera_anucio.dart';
import '../views/endereço/fom_add_endereco.dart';
import '../views/endereço/tela_endereco.dart';
import '../views/formaPagamento/adicionar_form_pagamento.dart';
import '../views/telaCarrinho/tela_carrinho.dart';
import '../views/telaCompras/tela_compras.dart';
import '../views/telaFavoritos/tela_favorito.dart';
import '../views/telaSenha/tela_senha.dart';
import '../views/tela_cadastro.dart';
import '../views/tela_entrada.dart';
import '../views/tela_home.dart';
import '../views/tela_login.dart';
import '../views/tela_perfil.dart';


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
        '/ScreenAnuncio': (context) => const TelaAnuncio(),
        '/ScreenGeraAnuncio': (context) => const GeraAnucio(),
        '/ScreenCarrinho': (context) => const TelaCard(),
        '/ScreenPerfil': (context) => const TelaPerfil(),
        '/ScreenFormaPagamento': (context) => const AddFormaPagamento(),
        '/ScreenEndereco': (context) => const TelaEndereco(),
        '/ScreenFormAddEndereco': (context) => const FormeAddEndereco(),
        '/ScreenSenha': (context) => const RedefinirSenha(),
        '/ScreenEntrada': (context) => const TelaEntrada(),
        '/ScreenFavoritos': (context) => const TelaFavoritos(),
        '/ScreenCompras': (context) => const TelaCompras(),
      },
    );
  }
}
