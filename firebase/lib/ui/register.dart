import 'package:firebase/provider/auth_provider.dart';
import 'package:firebase/ui/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController email =
        Provider.of<AuthProvider>(context, listen: false).email;
    final TextEditingController password =
        Provider.of<AuthProvider>(context, listen: false).password;
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CustomTextField(email, 'Email'),
          CustomTextField(password, 'Password'),
          ElevatedButton(
              onPressed: () {
                Provider.of<AuthProvider>(context, listen: false).register();
              },
              child: Text("Register"))
        ],
      ),
    );
  }
}
