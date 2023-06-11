import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fundlove/home_page.dart';
import 'package:fundlove/login_sebagai.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user login
          if (snapshot.hasData) {
            return HomePage();
          } else {
            return LoginSebagai();
          }
        },
      ),
    );
  }
}
