import 'package:flutter/material.dart';
import '../../theme/get_button_style.dart';
import '../../widgets/app_bar_secundary_screens.dart';

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
        child: appBarSecondaryScreens(),
      ),
      body: _getBody(),
    );
  }

  Widget _getBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: getStyleButton(width: 353, height: 50),
              child: const Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Adicionar cartão'), Icon(Icons.add_card)],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
