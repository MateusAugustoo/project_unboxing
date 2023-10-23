import 'package:flutter/material.dart';
import 'package:projeto_integrador/firebase/firestore_firebase.dart';
import 'package:projeto_integrador/model/endereco.dart';
import 'package:projeto_integrador/theme/colors.dart';
import 'package:projeto_integrador/theme/get_button_style.dart';
import 'package:projeto_integrador/theme/text_form_style.dart';
import 'package:projeto_integrador/widgets/get_app_bar_screens.dart';

import '../../theme/get_input_decoration.dart';

class FormeAddEndereco extends StatefulWidget {
  const FormeAddEndereco({super.key});

  @override
  State<FormeAddEndereco> createState() => _FormeAddEnderecoState();
}

class _FormeAddEnderecoState extends State<FormeAddEndereco> {
  final _firestore = FirestoreFirebase();

  final _ruaController = TextEditingController();
  final _bairroController = TextEditingController();
  final _cidadeController = TextEditingController();
  final _numeroCasaController = TextEditingController();
  final _cepController = TextEditingController();
  final _ufController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(91),
        child: getAppBarScreensSecundary(title: 'Adicione um Endereço'),
      ),
      body: _getBody(),
      backgroundColor: kBackGroundColor,
    );
  }

  Widget _getBody() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'RUA:',
                      style: getStyleTextAnuncio,
                    ),
                    SizedBox(
                      width: 353,
                      child: TextFormField(
                        controller: _ruaController,
                        decoration: getInputDecoration(
                          icon: Icons.location_on_outlined,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, digite uma rua';
                          }
                          return null;
                        },
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BAIRRO:',
                      style: getStyleTextAnuncio,
                    ),
                    SizedBox(
                      width: 280,
                      child: TextFormField(
                        controller: _bairroController,
                        decoration: getInputDecoration(
                          icon: Icons.location_on_outlined,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, digite um bairro';
                          }
                          return null;
                        },
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Número da casa:',
                      style: getStyleTextAnuncio,
                    ),
                    SizedBox(
                      width: 280,
                      child: TextFormField(
                        controller: _numeroCasaController,
                        keyboardType: TextInputType.number,
                        decoration: getInputDecoration(icon: Icons.pin),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CEP:',
                      style: getStyleTextAnuncio,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 214,
                          child: TextFormField(
                            controller: _cepController,
                            maxLength: 8,
                            keyboardType: TextInputType.number,
                            decoration: getInputDecoration(
                              icon: Icons.contact_mail_outlined,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, digite um CEP';
                              }
                              if (value.length < 8) {
                                return 'Por favor, digite um CEP válido';
                              }
                              return null;
                            },
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: getStyleButton(width: 100, height: 39),
                          child: const Text('Buscar'),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cidade:',
                          style: getStyleTextAnuncio,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 260,
                              child: TextFormField(
                                controller: _cidadeController,
                                decoration: getInputDecoration(
                                  icon: Icons.location_on_outlined,
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Por favor, digite uma cidade';
                                  }
                                  return null;
                                },
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'UF:',
                          style: getStyleTextAnuncio,
                        ),
                        SizedBox(
                          width: 73,
                          child: TextFormField(
                            controller: _ufController,
                            decoration: getInputDecorationUf(),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, digite uma UF';
                              }
                              return null;
                            },
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 68,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        cadastraEndereco();
                      },
                      style: getStyleButton(width: 168, height: 48),
                      child: const Text('Salvar'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  cadastraEndereco() async {
    if (_formKey.currentState!.validate()) {
      final UserEndereco userEndereco = UserEndereco(
          rua: _ruaController.text,
          bairro: _bairroController.text,
          cidade: _cidadeController.text,
          numeroCasa: _numeroCasaController.text,
          cep: _cepController.text,
          uf: _ufController.text);

      await _firestore.cadastarFirebase('Endereco', userEndereco.toJson());
    }
  }
}
