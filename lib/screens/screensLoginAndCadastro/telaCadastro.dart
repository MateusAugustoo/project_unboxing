import 'package:flutter/material.dart';
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
        style: TextStyle(color: Colors.black, fontSize: 30),
      ),
      elevation: 0,
      backgroundColor: kPrimaryColor,
      iconTheme: const IconThemeData(color: Colors.black, size: 30),
    );
  }

  Widget getBody() {
    return const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image(
              image: AssetImage('assets/png/logo.png'),
            ),
          ]),
          SizedBox(
            height: 16,
          ),
          Text(
            'Unboxing',
            style: TextStyle(
                color: kSecundaryColor,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 57,
          ),
          SizedBox(
              width: 352,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  prefixIconColor: kSecundaryColor,
                  labelText: 'Nome',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: kSecundaryColor)),
                ),
              ))
        ]);
  }
}
