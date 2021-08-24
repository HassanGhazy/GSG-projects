import 'package:firebase/helpers/auth_helper.dart';
import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  Future<void> register() async {
    await AuthHelper.authHelper.signUp(email.text, password.text);
  }

  Future<void> login() async {
    await AuthHelper.authHelper.signIn(email.text, password.text);
  }

  Future<void> resetPassword() async {
    await AuthHelper.authHelper.resetPassword(email.text);
  }
}
