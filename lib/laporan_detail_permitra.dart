import 'package:flutter/material.dart';

void main() {
  runApp(DetailLaporanPerMitra());
}

class DetailLaporanPerMitra extends StatefulWidget {
  const DetailLaporanPerMitra({Key? key}) : super(key: key);

  @override
  _DetailLaporanPerMitraState createState() => _DetailLaporanPerMitraState();
}

class _DetailLaporanPerMitraState extends State<DetailLaporanPerMitra> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Halaman Detail Laporan Per Mitra',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Laporan Mitra Kerupuk Kulit Barokah',
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
        body: ListView(
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
  title: Text("Endang Nurmi", 
  style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          )),
  subtitle: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Kerupuk Kulit Barokah"),
      Row(
        children: [
          Icon(Icons.location_on, size: 12),
          SizedBox(width: 4),
          Text(
            "Sukajadi, Bandung",
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        ],
      )
    ],
  ),
  leading: CircleAvatar(
  radius: 20,
  backgroundImage: AssetImage('images/endang.png'),
),
 
  
),

            ),
           
           Container(
  padding: EdgeInsets.symmetric(vertical: 16),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: InkWell(
          onTap: () {
            setState(() {
              _selectedTab = 0;
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: BoxDecoration(
              color: _selectedTab == 0 ? Color.fromARGB(255, 78, 119, 78) : Colors.grey,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Tentang Mitra',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: _selectedTab == 0 ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: 16),
      Expanded(
        child: InkWell(
          onTap: () {
            setState(() {
              _selectedTab = 1;
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: BoxDecoration(
              color: _selectedTab == 1 ? Color.fromARGB(255, 78, 119, 78) : Colors.grey,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Pembayaran',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: _selectedTab == 1 ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  ),
),

            // konten tab  sesuai dengan _selectedTab
            if (_selectedTab == 0) ...[
   Center(
    child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Pekerjaan',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                'Pedagang Kerupuk',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'Sektor',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                'Perdagangan',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'Penghasilan Perbulan',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                'Rp 850.000',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
         Row(
          children: [
            Expanded(
              child: Text(
                'Total Pinjaman',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                'Rp 3.500.000',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
         Row(
          children: [
            Expanded(
              child: Text(
                '% Bagi Hasil',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                '10%',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
         Row(
          children: [
            Expanded(
              child: Text(
                'Tenor',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                '12 Bulan',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
         Row(
          children: [
            Expanded(
              child: Text(
                'Bagi Hasil',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                'Rp 350.000',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
         Row(
          children: [
            Expanded(
              child: Text(
                'Pendanaan Ke',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                '1',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    ),
  ),
] else if (_selectedTab == 1) ...[
  Center(
    child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Jenis Angsuran',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                'Bulanan',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'Total Peminjaman (+bunga)',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                'Rp3.675.000',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'Jumlah Angsuran',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                'Rp307.000',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
         Row(
          children: [
            Expanded(
              child: Text(
                'Waktu Mulai Pinjam',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                '1 Mei 2023 ',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
         Row(
          children: [
            Expanded(
              child: Text(
                'Waktu Mulai Pinjam',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                '1 Mei 2024 ',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Padding(
                      padding: EdgeInsets.only(top: 32),
                    ),
                     Row(
          children: [
            Expanded(
              child: Text(
                'Pokok Diterima',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                'Rp 2.761.000',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'Bagi Hasil Diterima',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                'Rp 250.000',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'Sisa Waktu Pembayaran',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                '2 Bulan',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'Sisa Pinjaman',
                textAlign: TextAlign.center,
                style: TextStyle(
          fontWeight: FontWeight.bold, 
        ),
              ),
            ),
            Expanded(
              child: Text(
                'Rp 914.000',
                textAlign: TextAlign.center,
                style: TextStyle(
          fontWeight: FontWeight.bold, 
        ),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
],
          ],
          
        ),

      ),
    );
  }
}
