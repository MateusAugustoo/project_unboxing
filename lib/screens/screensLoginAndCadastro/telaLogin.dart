import 'package:flutter/material.dart';
import 'package:projeto_integrador/theme/button.dart';
import 'package:projeto_integrador/theme/colors.dart';
import 'package:projeto_integrador/theme/styleInputForms.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: getAppBar(),
      ),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      centerTitle: true,
      title: const Text(
        'Entrar',
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
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/png/logo.png')),
            ],
          ),
          const SizedBox(
            height: 9,
          ),
          const Text(
            'Unboxing',
            style: TextStyle(
                color: kSecundaryColor,
                fontSize: 30,
                fontFamily: 'Kadwa',
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 57,
          ),
          SizedBox(
              width: 352,
              child: TextField(
                decoration: getInputDecoration(
                  textlabel: 'Email', icon: const Icon(Icons.email_rounded)),
              )),
          const SizedBox(
            height: 27,
          ),
          SizedBox(
              width: 352,
              child: TextField(
                decoration: getInputDecoration(
                  textlabel: 'Senha', icon: const Icon(Icons.key_rounded)),
              )),
          const SizedBox(
            height: 32,
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
                  'Entrar',
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontFamily: 'Kadwa',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 167,
                decoration: const BoxDecoration(
                  border: Border(top: BorderSide(color: kSecundaryColor)),
                ),
              ),
              const SizedBox(width: 2),
              const Text(
                'ou',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: kSecundaryColor),
              ),
              const SizedBox(width: 2),
              Container(
                width: 167,
                decoration: const BoxDecoration(
                  border: Border(top: BorderSide(color: kSecundaryColor)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 48,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: null,
                icon: Image.asset('assets/png/icon_google.png'),
                iconSize: 50,
              ),
              const SizedBox(
                width: 39,
              ),
              const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.facebook_rounded,
                  color: kSecundaryColor,
                ),
                iconSize: 50,
              ),
              const SizedBox(
                width: 39,
              ),
              IconButton(
                onPressed: null,
                icon: Image.asset('assets/png/icon_instagram.png'),
                iconSize: 50,
              )
            ],
          )
        ],
      ),
    );
  }
}
