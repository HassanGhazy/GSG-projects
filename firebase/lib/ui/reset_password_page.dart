import 'package:firebase/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset Password"),
      ),
      body: Consumer<AuthProvider>(
        builder: (context, value, child) {
          return Column(
            children: [
              // textfield
              // button
            ],
          );
        },
      ),
    );
  }
}
