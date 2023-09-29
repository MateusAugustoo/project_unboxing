import 'package:flutter/material.dart';
import 'package:projeto_integrador/firebase/auth_firebase.dart';
import 'package:projeto_integrador/widgets/getAppBarHome.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthFirebase _autentServico = AuthFirebase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(139),
        child: getAppBar(),
      ),
    );
  }

}
