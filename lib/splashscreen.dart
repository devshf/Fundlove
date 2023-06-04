import 'package:flutter/material.dart';
import 'login_sebagai.dart';

void main() => runApp(SplashScreen());

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 28, 75, 28),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(3),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/login_sebagai');
              },
              child: Image(
                image: NetworkImage("https://iili.io/HgOvfaa.png"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
