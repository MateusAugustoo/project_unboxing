import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreFirebase {
  final db = FirebaseFirestore.instance;

  Future<void> cadastarProduto(
      String collection, Map<String, dynamic> data) async {
    await db.collection(collection).add(data);
  }
}
