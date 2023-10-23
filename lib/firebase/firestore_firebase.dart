import 'package:cloud_firestore/cloud_firestore.dart';


class FirestoreFirebase {
  final db = FirebaseFirestore.instance; 

  Future<void> cadastarFirebase(
      String collection, Map<String, dynamic> data) async {
    await db.collection(collection).add(data);
  }

  Future<void> deleteDatabase(String collection, String id) async {
    await db.collection(collection).doc(id).delete();
  }
}
