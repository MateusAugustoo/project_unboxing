import 'package:flutter/material.dart';
import 'package:projeto_integrador/firebase/auth_firebase.dart';
import 'package:projeto_integrador/theme/colors.dart';
import 'package:projeto_integrador/theme/get_button_style.dart';
import 'package:projeto_integrador/theme/get_input_decoration.dart';
import 'package:projeto_integrador/widgets/get_app_bar_login_cadastro.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final AuthFirebase _auth = AuthFirebase();

  bool obscureText = true;
  bool obscureTextConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: getAppBarLoginCadastro(context, title: 'Cadastre-se'),
      ),
      body: _getBodyCadastro(),
    );
  }

  Widget _getBodyCadastro() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('asset/png/logo.png', width: 128, height: 128),
            ],
          ),
          const Text(
            'Unboxing',
            style: TextStyle(
                fontFamily: 'Kadwa',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: kColorTextPrimary),
          ),
          const SizedBox(
            height: 53,
          ),
          Form(child: _getForm()),
        ],
      ),
    );
  }

  Widget _getForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            width: 352,
            child: TextFormField(
              controller: _nameController,
              decoration: getInputDecoration(
                textlabel: 'Nome',
                icon: Icons.person_rounded,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, digite um nome';
                }
                return null;
              },
            ),
          ),
          const SizedBox(
            height: 27,
          ),
          SizedBox(
            width: 352,
            child: TextFormField(
              controller: _emailController,
              decoration: getInputDecoration(
                textlabel: 'Email',
                icon: Icons.alternate_email_rounded,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, digite um email';
                }
                if (!value.contains('@') && !value.contains('.')) {
                  return 'Por favor, digite um email válido';
                }
                return null;
              },
            ),
          ),
          const SizedBox(
            height: 27,
          ),
          SizedBox(
            width: 352,
            child: TextFormField(
              controller: _passwordController,
              obscureText: obscureText,
              decoration: getInputDecorationPassword(
                textlabel: 'Senha',
                icon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  child: Icon(
                    obscureText ? Icons.key_rounded : Icons.key_off_rounded,
                  ),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, digite uma senha';
                }
                if (value.length < 6) {
                  return 'A senha deve ter pelo menos 6 caracteres';
                }
                return null;
              },
            ),
          ),
          const SizedBox(
            height: 27,
          ),
          SizedBox(
            width: 352,
            child: TextFormField(
              obscureText: obscureTextConfirm,
              controller: _confirmPasswordController,
              decoration: getInputDecorationPassword(
                textlabel: 'Confirma Senha',
                icon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obscureTextConfirm = !obscureTextConfirm;
                    });
                  },
                  child: Icon(
                    obscureTextConfirm
                        ? Icons.key_rounded
                        : Icons.key_off_rounded,
                  ),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, digite uma senha';
                }
                if (value.length < 6) {
                  return 'A senha deve ter pelo menos 6 caracteres';
                }
                return null;
              },
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          ElevatedButton(
            onPressed: () {
              cadastraUser();
            },
            style: getStyleButton(width: 167, height: 55),
            child: const Text(
              'Cadastrar',
              style: TextStyle(color: kColorTextPrimary),
            ),
          ),
        ],
      ),
    );
  }

  cadastraUser() {
    String nome = _nameController.text;
    String email = _emailController.text;
    String senha = _passwordController.text;
    String confirmaSenha = _confirmPasswordController.text;

    if (_formKey.currentState!.validate()) {
      if (senha != confirmaSenha) {
        return 'As senhas devem ser iguais';
      }
      _auth
          .cadastraUser(nome: nome, email: email, senha: senha)
          .then((value) => Navigator.pushNamed(context, '/ScreenHome'));
    }
  }
}
