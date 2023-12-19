import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projeto_integrador/firebase/firestore_firebase.dart';
import 'package:projeto_integrador/theme/colors.dart';

import '../../widgets/get_app_bar_screens.dart';

class TelaEndereco extends StatefulWidget {
  const TelaEndereco({super.key});

  @override
  State<TelaEndereco> createState() => _TelaEnderecoState();
}

final CollectionReference collectionReference =
    FirebaseFirestore.instance.collection('Endereco');
final Stream<QuerySnapshot> snapshots = collectionReference.snapshots();

final _firestore = FirestoreFirebase();

class _TelaEnderecoState extends State<TelaEndereco> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(95),
        child: getAppBarScreensSecundary(title: 'Endereço'),
      ),
      body: _getBody(),
      floatingActionButton: _getButtonAddEndereco(),
    );
  }

  Widget _getButtonAddEndereco() {
    return FloatingActionButton.extended(
      onPressed: () {
        Navigator.pushNamed(context, '/ScreenFormAddEndereco');
      },
      label: const Row(
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            'Adicionar Endereço',
            style: TextStyle(
              fontFamily: 'Kadwa',
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Icon(Icons.add_home_outlined),
        ],
      ),
    );
  }

  Widget _getBody() {
    return SafeArea(
      child: StreamBuilder(
        stream: snapshots, 
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Erro${snapshot.error}');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasData) {
            final List<DocumentSnapshot> documents = snapshot.data!.docs;

            return ListView.builder(
              itemCount: documents.length,
              itemBuilder: (BuildContext context, int index) {
                final Map<String, dynamic> data =
                    documents[index].data() as Map<String, dynamic>;
                final String id = documents[index].id;

                final numCasa = data['numeroCasa'] ?? '';

                return Container(
                  margin: const EdgeInsets.all(5),
                  width: 353,
                  height: 93,
                  child: Card(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: kColorTextPrimary),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.home_rounded,
                                  size: 40,
                                  color: kColorIconInput,
                                ),
                                const SizedBox(
                                  width: 18,
                                ),
                                Container(
                                  height: 57,
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right:
                                          BorderSide(color: kColorTextPrimary),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${data['cidade']} - ${data['uf']}',
                                  style: const TextStyle(
                                      fontFamily: 'Kadwa',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  '${data['rua']}  - $numCasa',
                                  style: const TextStyle(
                                      fontFamily: 'Kadwa',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey),
                                ),
                                Text(
                                  data['cep'],
                                  style: const TextStyle(
                                      fontFamily: 'Kadwa',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    _firestore.deleteDatabase('Endereco', id);
                                  },
                                  icon:
                                      const Icon(Icons.delete_forever_rounded),
                                  color: Colors.red,
                                  iconSize: 30,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }
          return const Text('Erro');
        },
      ),
    );
  }
}
