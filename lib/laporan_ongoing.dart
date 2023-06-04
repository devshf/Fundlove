import 'package:flutter/material.dart';

void main() {
  runApp(LaporanApp());
}

class LaporanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laporan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LaporanPage(),
    );
  }
}

class LaporanPage extends StatefulWidget {
  @override
  _LaporanPageState createState() => _LaporanPageState();
}

class _LaporanPageState extends State<LaporanPage> {
  bool isSedangBerjalanClicked = false;
  bool isSelesaiClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laporan'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    isSedangBerjalanClicked = !isSedangBerjalanClicked;
                  });
                },
                child: Text(
                  'Sedang Berjalan',
                  style: TextStyle(
                    fontSize: 24,
                    decoration: isSedangBerjalanClicked
                        ? TextDecoration.underline
                        : TextDecoration.none,
                  ),
                ),
              ),
              SizedBox(width: 20),
              TextButton(
                onPressed: () {
                  setState(() {
                    isSelesaiClicked = !isSelesaiClicked;
                  });
                },
                child: Text(
                  'Selesai',
                  style: TextStyle(
                    fontSize: 24,
                    decoration: isSelesaiClicked
                        ? TextDecoration.underline
                        : TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
