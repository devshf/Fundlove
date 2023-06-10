import 'package:flutter/material.dart';

void main() {
  runApp(const HalamanTarikDanaMember());
}

class HalamanTarikDanaMember extends StatelessWidget {
  const HalamanTarikDanaMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditController = TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Halaman Tarik Dana',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Tarik Dana',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                width: 328,
                height: 80,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 78, 119, 78),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Dana Tersedia',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Rp5.000.0000',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Color.fromARGB(255, 78, 119, 78),
                        width: 2,
                      ),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      title: Row(
                        children: [
                          Text(
                            "Penarikan Uang",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              "DANA/OVO/TransferBank",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Masukkan metode penarikan",
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 78, 119,
                                          78)), // Ganti warna sesuai kebutuhan
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 78, 119, 78),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      minimumSize: Size(double.infinity, 48),
                    ),
                    child: Text('Tarik Dana'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
