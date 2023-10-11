import 'package:flutter/material.dart';
import 'package:projeto_integrador/theme/colors.dart';
import 'package:projeto_integrador/theme/get_button_style.dart';
import 'package:projeto_integrador/theme/get_input_decoration.dart';

class GeraAnucio extends StatefulWidget {
  const GeraAnucio({super.key});

  @override
  State<GeraAnucio> createState() => _GeraAnucioState();
}

class _GeraAnucioState extends State<GeraAnucio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: _getAppBar(),
      ),
      body: _getBody(),
      backgroundColor: kBackGroundColor,
    );
  }

  Widget _getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kBackGroundColor,
      iconTheme: const IconThemeData(color: Colors.black, size: 30),
    );
  }

  Widget _getBody() {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [Form(child: _getForm())],
        ),
      ),
    );
  }

  Widget _getForm() {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 160,
                  height: 160,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      kColorTextTertiary,
                    )),
                    child: const Icon(
                      Icons.photo_outlined,
                      color: kColorTextSecondary,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Adicione fotos do seu produto para que ele tenha \nmais visibilidade',
                  style: TextStyle(
                      fontFamily: 'Kadwa',
                      fontSize: 11,
                      color: Colors.grey.shade700,
                      height: 2),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Nome do aparelho:',
                        style: TextStyle(
                            fontFamily: 'Kadwa',
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 353,
                        height: 40,
                        child: TextFormField(decoration: getInputDecoration()),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Descrição:',
                        style: TextStyle(
                            fontFamily: 'Kadwa',
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 353,
                        height: 100,
                        child: TextFormField(
                          decoration: getInputDecoration(),
                          maxLines: null,
                          maxLength: 400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Marca:',
                        style: TextStyle(
                            fontFamily: 'Kadwa',
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 353,
                        height: 40,
                        child: TextFormField(decoration: getInputDecoration()),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Defeito:',
                        style: TextStyle(
                            fontFamily: 'Kadwa',
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 353,
                        height: 40,
                        child: TextFormField(decoration: getInputDecoration()),
                      ),
                      Text(
                        'Informe caso o aparelho esteja danificado',
                        style: TextStyle(
                            fontFamily: 'Kadwa',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Preço:',
                        style: TextStyle(
                            fontFamily: 'Kadwa',
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 188,
                        height: 35,
                        child: TextFormField(decoration: getInputDecoration()),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            ElevatedButton(
              onPressed: () {},
              style: getStyleButtonOpen,
              child: const Text('Anunciar'),
            )
          ],
        ),
      ),
    );
  }
}
