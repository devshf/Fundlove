import 'package:flutter/material.dart';
import 'profile_investor.dart';

void main() {
  runApp(UbahSandiInvestor());
}

class UbahSandiInvestor extends StatefulWidget {
  @override
  _UbahSandiInvestorState createState() => _UbahSandiInvestorState();
}

class _UbahSandiInvestorState extends State<UbahSandiInvestor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
            Padding(padding: EdgeInsets.only(top: 16)),
            ElevatedButton(
              onPressed: () {
                //    signUserIn(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 78, 119, 78),
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
