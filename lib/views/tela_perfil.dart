import 'package:flutter/material.dart';
import 'package:unboxing/widgets/get_select_opc_perfil.dart';

import '../theme/colors.dart';
import '../widgets/get_line_space_perfil.dart';


class TelaPerfil extends StatefulWidget {
  const TelaPerfil({super.key});

  @override
  State<TelaPerfil> createState() => _TelaPerfilState();
}

class _TelaPerfilState extends State<TelaPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackGroundColor,
        iconTheme: const IconThemeData(color: Colors.black, size: 30),
      ),
      body: _getBody(),
      backgroundColor: kBackGroundColor,
    );
  }

  Widget _getBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
      child: SafeArea(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 55,
                  backgroundImage: NetworkImage('https://picsum.photos/200'),
                )
              ],
            ),
            const Text(
              'Mateus Augsuto',
              style: TextStyle(
                  color: kColorTextSecondary,
                  fontFamily: 'Kadwa',
                  fontWeight: FontWeight.w400,
                  fontSize: 25),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageIcon(
                  AssetImage('asset/png/home-pin.png'),
                  size: 30,
                  color: kColorTextPrimary,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Rua João XXIII',
                  style: TextStyle(
                      color: kColorTextPrimary,
                      fontFamily: 'Kadwa',
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            getLineSpace(),
            getSelectOpcProfile(
                text: 'Endereço',
                iconSelect: Icons.person_pin_circle_outlined,
                sizedBox: 85,
                onTap: () => {
                  Navigator.pushNamed(context, '/ScreenEndereco')
                }),
            getLineSpace(),
            getSelectOpcProfile(
                text: 'Formas de Pagamento',
                iconSelect: Icons.style_outlined,
                onTap: () {
                  Navigator.pushNamed(context, '/ScreenFormaPagamento');
                },
                sizedBox: 45),
            getLineSpace(),
            getSelectOpcProfile(
                text: 'Redefinir Senha',
                iconSelect: Icons.key_outlined,
                sizedBox: 58),
            getLineSpace(),
            getSelectOpcProfile(
                text: 'Configurar perfil',
                iconSelect: Icons.account_circle_outlined,
                sizedBox: 59),
            getLineSpace(),
          ],
        ),
      ),
    );
  }
}
