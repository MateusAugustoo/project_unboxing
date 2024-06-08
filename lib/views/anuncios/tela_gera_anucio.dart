import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../firebase/firestore_firebase.dart';
import '../../model/produto.dart';
import '../../theme/colors.dart';
import '../../theme/get_button_style.dart';
import '../../theme/get_input_decoration.dart';
import '../../theme/text_form_style.dart';


class GeraAnucio extends StatefulWidget {
  const GeraAnucio({super.key});

  @override
  State<GeraAnucio> createState() => _GeraAnucioState();
}

class _GeraAnucioState extends State<GeraAnucio> {
  final _firestore = FirestoreFirebase();

  File? image;

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
                GestureDetector(
                  onTap: selectImage,
                  child: image != null
                      ? Image.file(image!, width: 160, height: 160)
                      : SizedBox(
                          width: 160,
                          height: 160,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: const Icon(Icons.photo_outlined),
                          ),
                        ),
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nome do aparelho:',
                        style: getStyleTextAnuncio,
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
                      Text(
                        'Descrição:',
                        style: getStyleTextAnuncio,
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
                      Text(
                        'Marca:',
                        style: getStyleTextAnuncio,
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
                      Text(
                        'Defeito:',
                        style: getStyleTextAnuncio,
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
                        style: getStyleTextAlert,
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
                      Text(
                        'Preço:',
                        style: getStyleTextAnuncio,
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
              onPressed: () {
                gererAnuncio();
              },
              style: getStyleButton(width: 166, height: 51),
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

    _firestore.cadastarFirebase('produtor', produto.toMap());
  }

  Future selectImage() async {
    final ImagePicker picker = ImagePicker();

    try {
      XFile? file = await picker.pickImage(source: ImageSource.gallery);
      if (file != null) {
        setState(() {
          image = File(file.path);
        });
      }
    } catch (e) {
      return e;
    }
  }
}
