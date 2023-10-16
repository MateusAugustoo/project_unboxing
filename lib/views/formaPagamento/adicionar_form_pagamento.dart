import 'package:flutter/material.dart';
import 'package:projeto_integrador/widgets/app_bar_secundary_screens.dart';

class AddFormaPagamento extends StatefulWidget {
  const AddFormaPagamento({super.key});

  @override
  State<AddFormaPagamento> createState() => _AddFormaPagamentoState();
}

class _AddFormaPagamentoState extends State<AddFormaPagamento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: appBarSecundaryScreens(),
      ),
      body: _getBody(),
    );
  }

  Widget _getBody() {
    return SafeArea(child: Column());
  }
}
