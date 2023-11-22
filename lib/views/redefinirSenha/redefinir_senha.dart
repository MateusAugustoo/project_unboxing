import 'package:flutter/material.dart';
import 'package:projeto_integrador/theme/colors.dart';
import 'package:projeto_integrador/theme/get_button_style.dart';
import 'package:projeto_integrador/theme/get_input_decoration.dart';
import 'package:projeto_integrador/widgets/get_app_bar_login_cadastro.dart';

class RedefinirSenha extends StatefulWidget {
  const RedefinirSenha({super.key});

  @override
  State<RedefinirSenha> createState() => _RedefinirSenhaState();
}

class _RedefinirSenhaState extends State<RedefinirSenha> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: getAppBarLoginCadastro(context, title: 'Redefinir Senha'),
            ),
        body: _getBody()
      );
  }

  Widget _getBody() {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 105),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/png/logo.png',
                width: 128,
                height: 128,
              ),
            ],
          ),
           const Text(
            'Unboxing',
            style: TextStyle(
              fontFamily: 'Kadwa',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: kColorTextPrimary
            ),
          ),
          const SizedBox(height: 60),
          Form(child: _getFormSenha()),
        ],
      ),
    );
  }

  Widget _getFormSenha(){
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            width: 353,
            child: TextFormField(
              decoration: getInputDecoration(
                textlabel: 'Digite sua nova senha',
                icon: (Icons.key_rounded),
              ),
            )
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 353,
            child: TextFormField(
              decoration: getInputDecoration(
                textlabel: 'Confirme sua nova senha',
                icon: (Icons.key_rounded),
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton(onPressed: () {},
          style: getStyleButton(width: 167, height: 55),
          child: const Text('Redefinir'),)
        ],
      ),
    );
  }
}