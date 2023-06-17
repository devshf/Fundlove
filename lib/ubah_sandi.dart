import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ubah Kata Sandi',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: UbahSandiMember(),
    );
  }
}

class UbahSandiMember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Warna AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            // Navigator.pop(context);
          },
        ),
        title: Text(
          'Ubah Kata Sandi',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  labelText: 'Kata Sandi Lama',
                  helperText: 'Masukkan kata sandi sebelumnya'),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Kata Sandi Baru',
                  helperText: 'Masukkan kata sandi baru'),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Konfirmasi Kata Sandi Baru',
                  helperText: 'Konfirmasi kata sandi baru'),
              obscureText: true,
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF1C4B1C),
              ),
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}
