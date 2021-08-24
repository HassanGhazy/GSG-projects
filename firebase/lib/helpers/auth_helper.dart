import 'package:firebase_auth/firebase_auth.dart';

class AuthHelper {
  AuthHelper._();
  static AuthHelper authHelper = AuthHelper._();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  signIn(String email, String password) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      print(userCredential.user!.uid);
      print(await userCredential.user!.getIdToken());
    } on Exception catch (e) {
      print(e);
    }
  }

  signUp(String email, String password) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      print(userCredential.user!.uid);
      print(await userCredential.user!.getIdToken());
    } on Exception catch (e) {
      print(e);
    }
  }

  Future<void> resetPassword(String email) async {
    firebaseAuth.sendPasswordResetEmail(email: email);
  }

  verifyEmail() async {}
  logout() async {}
  User currentUser() {
    return firebaseAuth.currentUser!;
  }
}
