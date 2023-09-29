import 'package:flutter/material.dart';
import 'package:projeto_integrador/comum/snackBar.dart';
import 'package:projeto_integrador/firebase/auth_firebase.dart';
import 'package:projeto_integrador/theme/button.dart';
import 'package:projeto_integrador/theme/colors.dart';
import 'package:projeto_integrador/theme/styleInputForms.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _confirmarSenhaController =
      TextEditingController();

  final AuthFirebase _autentServico = AuthFirebase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: getAppBar(),
      ),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      centerTitle: true,
      title: const Text(
        'Cadastro',
        style: TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      elevation: 0,
      backgroundColor: kPrimaryColor,
      iconTheme: const IconThemeData(color: Colors.black, size: 30),
    );
  }

  Widget getBody() {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/png/logo.png'),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Unboxing',
              style: TextStyle(
                  color: kSecundaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 57,
            ),
            SizedBox(
              width: 352,
              child: TextFormField(
                controller: _nomeController,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  if (value.length < 3) {
                    return 'Nome muito curto';
                  }
                  return null;
                },
                decoration: getInputDecoration(
                  textlabel: 'Nome',
                  icon: const Icon(Icons.person_outline),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 352,
              child: TextFormField(
                controller: _emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  if (value.length < 5) {
                    return 'Email muito curto';
                  }
                  if (!value.contains('@')) {
                    return 'Email inválido';
                  }
                  return null;
                },
                decoration: getInputDecoration(
                  textlabel: 'Email',
                  icon: const Icon(Icons.email_rounded),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 352,
              child: TextFormField(
                controller: _senhaController,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  if (value.length < 5) {
                    return 'Senha muito curta';
                  }
                  return null;
                },
                decoration: getInputDecoration(
                  textlabel: 'Senha',
                  icon: const Icon(Icons.key_rounded),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 352,
              child: TextFormField(
                controller: _confirmarSenhaController,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  if (value.length < 5) {
                    return 'Senha muito curta';
                  }
                  return null;
                },
                decoration: getInputDecoration(
                  textlabel: 'Confirme sua senha',
                  icon: const Icon(Icons.key_rounded),
                ),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  )
                ],
              ),
              child: ElevatedButton(
                onPressed: () {
                  cadastrarUser();
                },
                style: textButtonOpenStyle,
                child: const Text(
                  'Cadastrar',
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontFamily: 'Kadwa',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  cadastrarUser() {
    String nome = _nomeController.text;
    String email = _emailController.text;
    String senha = _senhaController.text;
    String confirmarSenha = _confirmarSenhaController.text;

    if (_formKey.currentState!.validate()) {
      if (senha != confirmarSenha) {
        mostraSnakBar(context: context, mensagem: 'Senhas não conferem');
      }
      _autentServico
          .cadastraUser(
            nome: nome,
            email: email,
            senha: senha,
          )
          .then((String? erro) => {
                // Voltou com erro
                if (erro != null)
                  {mostraSnakBar(context: context, mensagem: erro)}
              });
    }
  }
}
