import 'package:flutter/material.dart';
import 'package:projeto_integrador/theme/button.dart';
import 'package:projeto_integrador/theme/colors.dart';
import 'package:projeto_integrador/theme/styleInputForms.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
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
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image(
            image: AssetImage('assets/png/logo.png'),
          ),
        ]),
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
              decoration: getInputDecoration(
                  textlabel: 'Nome', icon: const Icon(Icons.person_outline)),
            )),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
            width: 352,
            child: TextFormField(
              decoration: getInputDecoration(
                  textlabel: 'Email', icon: const Icon(Icons.email_rounded)),
            )),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
            width: 352,
            child: TextFormField(
              decoration: getInputDecoration(
                  textlabel: 'Senha', icon: const Icon(Icons.key_rounded)),
            )),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
            width: 352,
            child: TextFormField(
              decoration: getInputDecoration(
                  textlabel: 'Confirme sua senha',
                  icon: const Icon(Icons.key_rounded)),
            )),
        const SizedBox(
          height: 45,
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
              onPressed: null,
              style: textButtonOpenStyle,
              child: const Text(
                'Cadastrar',
                style: TextStyle(
                    color: kPrimaryColor,
                    fontFamily: 'Kadwa',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
        ),
      ]),
    );
  }
}
