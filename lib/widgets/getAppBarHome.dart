import 'package:flutter/material.dart';
import 'package:projeto_integrador/firebase/auth_firebase.dart';
import 'package:projeto_integrador/theme/colors.dart';

AuthFirebase _autentServico = AuthFirebase();

AppBar getAppBar() {
  return AppBar(
    elevation: 0,
    title: getTitle(),
    backgroundColor: kPrimaryColor,
  );
}

Widget getTitle() {
  return Column(
    children: [
      const Row(
        children: [
          Text(
            'Olá, ',
            style: TextStyle(
                color: kSecundaryColor, fontFamily: 'Kadwa', fontSize: 15),
          ),
          Text(
            'Mateus',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ],
      ),
      const SizedBox(height: 5),
      Row(
        children: [
          const Text(
            'Explore os ',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontFamily: 'Kadwa'),
          ),
          const Text(
            'Produtos',
            style: TextStyle(
                color: kSecundaryColor,
                fontFamily: 'kadwa',
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          IconButton(
            onPressed: () {
              logout();
            },
            icon: const Icon(Icons.logout),
            color: kSecundaryColor,
          )
        ],
      ),
    ],
  );
}

void logout() {
  _autentServico.logout();
}
