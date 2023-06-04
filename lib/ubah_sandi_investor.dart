import 'package:flutter/material.dart';

void main() {
  runApp(UbahSandi());
}

class UbahSandi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ubah Kata Sandi',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ChangePasswordPage(),
    );
  }
}

class ChangePasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
            fontSize: 16,
            // fontWeight: FontWeight.bold
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
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Kata Sandi Baru',
                helperText: 'Minimal 8 karakter',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Konfirmasi Kata Sandi Baru',
                helperText: 'Ulangi kata sandi baru',
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 78, 119, 78),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                minimumSize: Size(double.infinity, 48),
              ),
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}
