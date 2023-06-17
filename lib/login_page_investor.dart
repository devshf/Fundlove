import 'package:flutter/material.dart';
import 'homepage_investor.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() => runApp(PageLogin());

class PageLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.black,
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
      home: HalamanLoginInvestor(),
    );
  }
}

class HalamanLoginInvestor extends StatefulWidget {
  @override
  _HalamanLoginState createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLoginInvestor> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void signUserIn(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      Navigator.pop(context);
      Navigator.of(context).pushNamed('/homepage_investor');
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == 'user-not-found') {
        wrongEmailMessage();
      } else if (e.code == 'wrong-password') {
        wrongPasswordMessage();
      }
    }
  }

  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Email tidak terdaftar'),
        );
      },
    );
  }

  void wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Password salah'),
        );
      },
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Image.network(
                    "https://iili.io/HgQKsyX.png",
                    width: 300,
                    height: 300,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            LabelTextField(
              labelText: 'Alamat Email',
              hintText: 'Masukkan alamat email',
              controller: _emailController,
            ),
            SizedBox(height: 20.0),
            LabelTextField(
              labelText: 'Kata Sandi',
              hintText: 'Masukkan kata sandi',
              controller: _passwordController,
              obscureText: true,
            ),
            Padding(padding: EdgeInsets.only(top: 24)),
            ElevatedButton(
              onPressed: () {
                signUserIn(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 78, 119, 78),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                minimumSize: Size(double.infinity, 48),
              ),
              child: Text('Masuk'),
            ),
          ],
        ),
      ),
    );
  }
}

class LabelTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;

  const LabelTextField({
    required this.labelText,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            color: Color.fromARGB(255, 92, 92, 92),
          ),
        ),
        SizedBox(height: 8.0),
        TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
      ],
    );
  }
}
