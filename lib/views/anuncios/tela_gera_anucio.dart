
import 'package:flutter/material.dart';
import 'package:projeto_integrador/firebase/firestore_firebase.dart';
import 'package:projeto_integrador/model/produto.dart';
import 'package:projeto_integrador/theme/colors.dart';
import 'package:projeto_integrador/theme/get_button_style.dart';
import 'package:projeto_integrador/theme/get_input_decoration.dart';

class GeraAnucio extends StatefulWidget {
  const GeraAnucio({super.key});

  @override
  State<GeraAnucio> createState() => _GeraAnucioState();
}

class _GeraAnucioState extends State<GeraAnucio> {

  FirestoreFirebase _firestore = FirestoreFirebase();

  final _fromKey = GlobalKey<FormState>();
  final _nomeProdutoController = TextEditingController();
  final _descController = TextEditingController();
  final _marcaController = TextEditingController();
  final _defeitoController = TextEditingController();
  final _precoController = TextEditingController();


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
      key: _fromKey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
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
                        child: TextFormField(
                          decoration: getInputDecoration(),
                          controller: _nomeProdutoController,
                        ),
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
                          controller: _descController,
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
                        child: TextFormField(
                          decoration: getInputDecoration(),
                          controller: _marcaController,
                        ),
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
                        child: TextFormField(
                          decoration: getInputDecoration(),
                          controller: _defeitoController,
                        ),
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
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: getInputDecoration(),
                          controller: _precoController,
                        ),
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

  gererAnuncio() {
    final produto = Produto(
      nomeProduto: _nomeProdutoController.text,
      descricao: _descController.text,
      marcaProduto: _marcaController.text,
      defeito: _defeitoController.text,
      preco: _precoController.text,
    );

    _firestore.cadastarProduto('produto', produto.toMap());
  }

}
