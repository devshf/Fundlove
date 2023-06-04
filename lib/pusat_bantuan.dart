import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pusat Bantuan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HalamanPusatBantuan(),
    );
  }
}

class HalamanPusatBantuan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Pusat Bantuan',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            Image.asset(
              'images/pusat_bantuan.png',
              width: 300,
              height: 220,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(top: 24),
            ),
            Container(
              width: 400.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Color.fromARGB(255, 202, 202, 202),
                  width: 2,
                ),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                title: Text(
                  "Contact Admin",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: IconButton(
                  icon: Icon(Icons.headphones,
                      color: Color.fromARGB(255, 0, 0, 0)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios,
                      color: Color.fromARGB(255, 0, 0, 0)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
