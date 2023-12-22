import 'package:flutter/material.dart';
import 'package:projeto_integrador/firebase/auth_firebase.dart';
import 'package:projeto_integrador/theme/colors.dart';
import 'package:projeto_integrador/theme/get_button_style.dart';
import 'package:projeto_integrador/theme/get_input_decoration.dart';
import 'package:projeto_integrador/widgets/get_app_bar_login_cadastro.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final AuthFirebase _auth = AuthFirebase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: getAppBarLoginCadastro(context, title: 'Login'),
      ),
      body: _getBodyLoginPage(),
    );
  }

  Widget _getBodyLoginPage() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 36,
            ),
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
                  color: kColorTextPrimary),
            ),
            const SizedBox(
              height: 55,
            ),
            Form(child: _getForm()),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 167,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: kColorTextPrimary),
                    ),
                  ),
                ),
                const SizedBox(width: 2),
                const Text(
                  'ou',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kColorTextPrimary),
                ),
                const SizedBox(width: 2),
                Container(
                  width: 167,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: kColorTextPrimary),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 41,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: null,
                  icon: Image.asset('asset/png/icon_google.png'),
                  iconSize: 50,
                ),
                const SizedBox(
                  width: 39,
                ),
                const IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.facebook_rounded,
                    color: Colors.blue,
                  ),
                  iconSize: 50,
                ),
                const SizedBox(
                  width: 39,
                ),
                IconButton(
                  onPressed: null,
                  icon: Image.asset('asset/png/icon_instagram.png'),
                  iconSize: 50,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _getForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            width: 353,
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
                if (!value.contains('@')) {
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
            width: 353,
            child: TextFormField(
              controller: _passwordController,
              decoration: getInputDecoration(
                textlabel: 'Senha',
                icon: Icons.key_rounded,
              ),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, digite uma senha';
                }
                return null;
              },
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 50, top: 60),),
                SizedBox(
                  height: 53,
                  child: GestureDetector(
                    onTap: () {Navigator.pushNamed(context, '/ScreenSenha');
                    },
                    child: const Text(
                      'Redefinir Senha',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        color: kColorTextPrimary,
                        fontFamily: 'Kadwa',
                        fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                )
            ],
          ),
          ElevatedButton(
            onPressed: () {
              loginPage();
            },
            style: getStyleButton(width: 167, height: 55),
            child: const Text('Entrar',
            style: TextStyle(color: kColorTextTertiary),),
          ),
        ],
      ),
    );
  }

  loginPage() {
    final email = _emailController.text;
    final senha = _passwordController.text;

    if (_formKey.currentState!.validate()) {
      _auth
          .logarUser(email: email, senha: senha).then(
        (value) {
          if (value == null) {
            Navigator.pushNamed(context, '/ScreenHome');
          }
        },
      );
    }
  }
}
