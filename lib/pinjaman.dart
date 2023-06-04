import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const HalamanPinjaman());
}

class HalamanPinjaman extends StatelessWidget {
  const HalamanPinjaman({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController textEditController = TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Color(0xFF1C4B1C),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Ajukan Pinjaman",
            style: TextStyle(color: Color(0xFF1C4B1C)),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notification_add,
                color: Color(0xFF1C4B1C),
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.message_sharp, color: Color(0xFF1C4B1C)),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/FLogin.png",
                  height: 150,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nama Lengkap'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Detail Usaha'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Alamat'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nomor Telepon'),
                ),
                TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Nominal yang Diajukan'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Waktu Pengajuan'),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Ajukan Pinjaman'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF1C4B1C),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
