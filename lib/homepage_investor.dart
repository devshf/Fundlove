import 'package:flutter/material.dart';
import 'list_umkm.dart';
import 'notification_investor.dart';
import 'topup_investor.dart';
import 'tarik_dana_investor.dart';
import 'detail_topup_investor.dart';

void main() {
  runApp(HomePageInvestor());
  home:
  HomePageInvestor;
}

class HomePageInvestor extends StatefulWidget {
  const HomePageInvestor({Key? key}) : super(key: key);

  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePageInvestor> {
  int idx = 0; //index yang aktif

  static const List<Center> halaman = [
    Center(child: Text("")),
    Center(child: Text("dua")),
    Center(child: Text("tiga")),
    Center(child: Text("empat"))
  ];

  void onItemTap(int index) {
    setState(() {
      idx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Selamat Datang, Dian!',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Color(0xFF1C4B1C),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/notifikasi_investor');
              },
            ),
            IconButton(
              icon: Icon(Icons.message_sharp, color: Color(0xFF1C4B1C)),
              onPressed: () {
                Navigator.of(context).pushNamed('/chat');
              },
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.fromLTRB(16, 6, 16, 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Text(
                          'Total asetmu',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          'Total profit',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 16, right: 16),
                        child: Text(
                          'Rp100.000.000',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.0, bottom: 16.0),
                        child: Text(
                          'Rp50.000.000',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 78, 119, 78),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(10),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Saldo Aktif",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Rp9.000.000",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.add_circle, color: Colors.white),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed('/topup_investor');
                              },
                            ),
                            SizedBox(width: 16),
                            IconButton(
                              icon: Icon(Icons.money, color: Colors.white),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed('/tarik_dana_investor');
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 78, 119, 78),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(10),
                        title: Row(
                          children: [
                            Text(
                              "Pendanaan Aktif",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
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
                                "Kamu sedang mendanai 3 mitra",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
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
                                        'Sisa Pokok',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 4),
                                        child: Text(
                                          'Rp56.000.000',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 91,
                                  height: 53,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 78, 119, 78),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Bagi Hasil',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 4),
                                        child: Text(
                                          'Rp19.000.000',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        trailing: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/list_umkm');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            minimumSize: Size(80, 36),
                          ),
                          child: Text(
                            'Danai Mitra',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: 200,
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Color.fromARGB(255, 202, 202, 202),
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 4, bottom: 8)),
                                        CircleAvatar(
                                          radius: 18,
                                          backgroundImage:
                                              AssetImage('images/ana.png'),
                                        ),
                                        SizedBox(width: 16),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ana Putri Ainiyyah',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 4),
                                            Text(
                                              'Usaha Dagang Seblak',
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 12,
                                              ),
                                            ),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 12))
                                          ],
                                        ),
                                      ],
                                    ),
                                    // baris 1
                                    Row(children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 20)),
                                      Expanded(
                                        child: Text(
                                          'Total Pinjaman',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Rp5.000.000',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ]),

                                    // baris ke 2

                                    Row(children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 20)),
                                      Expanded(
                                        child: Text(
                                          '% Bagi hasil',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          '10%',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ]),

                                    // baris ke 3
                                    Row(children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 20)),
                                      Expanded(
                                        child: Text(
                                          'Tenor',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          '12 bulan',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ]),
                                    SizedBox(height: 16),
                                    Container(
                                      padding: EdgeInsets.only(top: 16),
                                      width: double.infinity,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // ini nanti diisi buat ngarahin ke hal list umkm
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromARGB(
                                                255, 78, 119, 78),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            )),
                                        child: Text('Danai Mitra'),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: 200,
                              margin: EdgeInsets.only(left: 8),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Color.fromARGB(255, 202, 202, 202),
                                  width: 1,
                                ),
                              ),

                              // CARD 2
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 4, bottom: 8)),
                                        CircleAvatar(
                                          radius: 18,
                                          backgroundImage:
                                              AssetImage('images/bunga.png'),
                                        ),
                                        SizedBox(width: 16),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Bunga Hasna',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 4),
                                            Text(
                                              'Modal Dagang Baju',
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 12,
                                              ),
                                            ),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 12))
                                          ],
                                        ),
                                      ],
                                    ),
                                    // baris 1
                                    Row(children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 20)),
                                      Expanded(
                                        child: Text(
                                          'Total Pinjaman',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Rp9.000.000',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ]),

                                    // baris ke 2

                                    Row(children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 20)),
                                      Expanded(
                                        child: Text(
                                          '% Bagi hasil',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          '10%',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ]),

                                    // baris ke 3
                                    Row(children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 20)),
                                      Expanded(
                                        child: Text(
                                          'Tenor',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          '24 bulan',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ]),
                                    SizedBox(height: 16),
                                    Container(
                                      padding: EdgeInsets.only(top: 16),
                                      width: double.infinity,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // ini nanti diisi buat ngarahin ke hal list umkm
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromARGB(
                                                255, 78, 119, 78),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            )),
                                        child: Text('Danai Mitra'),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          // currentIndex: _currentIndex,
          selectedItemColor: Color(0xFF1C4B1C),
          // onTap: onTabTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/homepage_investor');
                },
                child: Icon(Icons.home, color: Colors.grey),
              ),
              label: 'Home',
              activeIcon: Icon(Icons.home, color: Color(0xFF1C4B1C)),
            ),
            // BottomNavigationBarItem(
            //   icon: GestureDetector(
            //     onTap: () {
            //       Navigator.pushReplacementNamed(context, '/search_investor');
            //     },
            //     child: Icon(Icons.search, color: Colors.grey),
            //   ),
            //   label: "Search",
            //   activeIcon: Icon(Icons.search, color: Color(0xFF1C4B1C)),
            // ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/report_investor');
                },
                child: Icon(Icons.report, color: Colors.grey),
              ),
              label: "Report",
              activeIcon: Icon(Icons.report, color: Color(0xFF1C4B1C)),
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/profile_investor');
                },
                child: Icon(Icons.account_circle, color: Colors.grey),
              ),
              label: "Profile",
              activeIcon: Icon(Icons.account_circle, color: Color(0xFF1C4B1C)),
            ),
          ],
        ),
      ),
    );
  }
}
