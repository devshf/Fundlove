import 'package:flutter/material.dart';

void main() {
  runApp(HalamanDetailMitra());
}

class HalamanDetailMitra extends StatefulWidget {
  const HalamanDetailMitra({Key? key}) : super(key: key);

  @override
  _HalamanDetailMitraState createState() => _HalamanDetailMitraState();
}

class _HalamanDetailMitraState extends State<HalamanDetailMitra> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Halaman Detail Mitra',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Detail Mitra',
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
                title: Text("Hasna Julianti",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Modal Dagang Warung Makan"),
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 12),
                        SizedBox(width: 4),
                        Text(
                          "Limbangan, Garut",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 16)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 78, 119, 78),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Total Pinjaman',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Rp6.000.000',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 78, 119, 78),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '% Bagi Hasil',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '12%',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 78, 119, 78),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Tenor',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '18 Bulan',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1541710430735-5fca14c95b00?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ'),
                ),
                // trailing: IconButton(
                //   icon: Icon(Icons.add_circle, color: Color.fromARGB(255, 78, 119, 78)),
                //   onPressed: () {
                //     Navigator.pop(context);
                //   },
                // ),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                          color: _selectedTab == 0
                              ? Color.fromARGB(255, 78, 119, 78)
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Tentang Mitra',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: _selectedTab == 0
                                  ? FontWeight.bold
                                  : FontWeight.normal,
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                          color: _selectedTab == 1
                              ? Color.fromARGB(255, 78, 119, 78)
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Risiko Pendanaan',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: _selectedTab == 1
                                  ? FontWeight.bold
                                  : FontWeight.normal,
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
                            'Dagang Warung Makan',
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
                            'Rp1.325.000',
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
                            '18 Bulan',
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
                            'Rp720.000',
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
                            'Jumlah Angsuran',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Rp350.000',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 180),
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // ini nanti diisi buat ngarahin ke hal list umkm
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 78, 119, 78),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            )),
                        child: Text('Danai Mitra'),
                      ),
                    )
                  ],
                ),
              ),
            ] else if (_selectedTab == 1) ...[
              Center(
                child: Text(
                  'Setiap industri yang digeluti oleh Mitra Usaha kami memiliki risikonya masing-masing. Berikut adalah risiko-risiko yang dihadapi oleh Mitra Usaha ini yang perlu Anda ketahui:\n\n'
                  '1. Risiko Kinerja Usaha: Keberhasilan warung makan dapat dipengaruhi oleh banyak faktor, seperti permintaan pasar & persaingan. Ada risiko bahwa warung makan tidak dapat mencapai kinerja finansial yang diharapkan, mengakibatkan ketidakmampuan untuk melunasi pinjaman.\n\n'
                  '2. Risiko Persaingan: Industri warung makan sering kali memiliki persaingan yang ketat. Keberhasilan warung makan dapat dipengaruhi oleh daya saing dengan warung makan lain di sekitarnya. Ada risiko bahwa warung makan mitra mungkin tidak dapat bersaing secara efektif, yang dapat berdampak pada pendapatan dan hasil investasi Anda.',
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
