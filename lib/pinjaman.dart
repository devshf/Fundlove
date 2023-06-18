import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const HalamanPinjaman());
}

class HalamanPinjaman extends StatefulWidget {
  const HalamanPinjaman({Key? key}) : super(key: key);

  @override
  State<HalamanPinjaman> createState() => _AjukanPinjaman();
}

class _AjukanPinjaman extends State<HalamanPinjaman> {
  // final databaseRef = FirebaseDatabase.instance.ref('');
  final userNamaController = TextEditingController();
  final userUsahaController = TextEditingController();
  final userAlamatController = TextEditingController();
  final userTeleponController = TextEditingController();
  final userNominalController = TextEditingController();
  final userWaktuController = TextEditingController();

  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('Pinjaman');
  }

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
                  controller: userNamaController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(labelText: 'Nama Lengkap'),
                ),
                TextFormField(
                  controller: userUsahaController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(labelText: 'Detail Usaha'),
                ),
                TextFormField(
                  controller: userAlamatController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(labelText: 'Alamat'),
                ),
                TextFormField(
                  controller: userTeleponController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Nomor Telepon'),
                ),
                TextFormField(
                  controller: userNominalController,
                  keyboardType: TextInputType.number,
                  decoration:
                      const InputDecoration(labelText: 'Nominal yang Diajukan'),
                ),
                TextFormField(
                  controller: userWaktuController,
                  keyboardType: TextInputType.datetime,
                  decoration:
                      const InputDecoration(labelText: 'Waktu Pengajuan'),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Map<String, String> pinjaman = {
                      'nama': userNamaController.text,
                      'detail_usaha': userUsahaController.text,
                      'alamat': userAlamatController.text,
                      'no_telp': userTeleponController.text,
                      'nominal': userNominalController.text,
                      'waktu_pengajuan': userWaktuController.text,
                    };
                    dbRef.push().set(pinjaman);
                    Navigator.of(context).pushNamed('/homepage');
                  },
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
