import 'package:flutter/material.dart';
import 'ubah_sandi.dart';

void main() => runApp(HalamanEditMember());

class HalamanEditMember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Edit Profil',
      theme: ThemeData(
        primaryColor: Color(0xFF1C4B1C),
        accentColor: Color(0xFF1C4B1C),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Edit Profil',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                print('Tombol Simpan ditekan');
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF1C4B1C),
              ),
              child: Text('Simpan'),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/profil_maria.jpg'),
              ),
              SizedBox(height: 10),
              TextButton.icon(
                onPressed: () {
                  print('Ubah foto profil');
                },
                icon: Icon(Icons.change_circle),
                label: Text('Ganti Foto Profil'),
              ),
              SizedBox(height: 5),
              Container(
                //width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Nama',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Lokasi',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Jenis Usaha',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Bio',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/password');
                  },
                  child: Text(
                    'Ubah Kata Sandi di Sini',
                    style: TextStyle(
                      color: Colors.blue, // Warna teks
                      decoration: TextDecoration.underline,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
