import 'package:firebase_auth/firebase_auth.dart';

class AuthFirebase {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String?> cadastraUser(
      {required String nome,
      required String email,
      required String senha}) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: senha,
      );

      await userCredential.user!.updateDisplayName(nome);

      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return 'O usuario esta cadastrado';
      }

      return 'erro desconhecido';
    }
  }

  Future<String?> logarUser(
      {required String email, required String senha}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: senha);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<void> logout() async {
    await _auth.signOut();
  }
}
