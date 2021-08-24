import 'package:firebase/helpers/app_router.dart';
import 'package:firebase/provider/auth_provider.dart';
import 'package:firebase/ui/login.dart';
import 'package:firebase/ui/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<AuthProvider>(
      create: (_) => AuthProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FireBase',
      navigatorKey: AppRouter.route.navKey,
      home: FireBaseConfigration(),
    );
  }
}

class FireBaseConfigration extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              title: Text("Something is Wrong"),
              centerTitle: true,
            ),
            body: Center(
              child: Text("Error was occurced"),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        return Login();
      },
    );
  }
}
