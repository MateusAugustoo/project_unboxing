import 'package:flutter/material.dart';
import 'package:projeto_integrador/theme/button.dart';
import 'package:projeto_integrador/theme/colors.dart';

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
        const SizedBox(
            width: 352,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline),
                prefixIconColor: kTextColor,
                labelText: 'Nome',
                labelStyle: TextStyle(color: kTextColor),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: kSecundaryColor)),
              ),
            )),
        const SizedBox(
          height: 16,
        ),
        const SizedBox(
            width: 352,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.alternate_email),
                prefixIconColor: kTextColor,
                labelText: 'Email',
                labelStyle: TextStyle(color: kTextColor),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: kSecundaryColor)),
              ),
            )),
        const SizedBox(
          height: 16,
        ),
        const SizedBox(
            width: 352,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.key_rounded),
                prefixIconColor: kTextColor,
                labelText: 'Senha',
                labelStyle: TextStyle(color: kTextColor),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: kSecundaryColor)),
              ),
            )),
        const SizedBox(
          height: 16,
        ),
        const SizedBox(
            width: 352,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.key_rounded),
                prefixIconColor: kTextColor,
                labelText: 'Confirma Senha',
                labelStyle: TextStyle(color: kTextColor),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: kSecundaryColor)),
              ),
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
