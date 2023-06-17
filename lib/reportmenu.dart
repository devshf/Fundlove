import 'package:flutter/material.dart';
import 'home_page.dart';
import 'notifikasi_semua.dart';
import 'chat.dart';
import 'pinjaman.dart';
import 'tagihan.dart';
import 'pembayaran_tagihan.dart';
import 'riwayat_transaksi.dart';
import 'search.dart';
import 'profile.dart';
import 'reportmenu.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(ReportApp());
}

class ReportApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Report Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ReportScreen(),
    );
  }
}

class ReportScreen extends StatefulWidget {
  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentBottomNavIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // void _changeBottomNavIndex(int index) {
  //   setState(() {
  //     _currentBottomNavIndex = index;
  //   });
  // }
  int _currentIndex = 1;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double boxWidth = width * 0.8; // 80% of screen width

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Laporan',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          indicatorColor: Colors.black,
          unselectedLabelColor: Colors.black,
          tabs: [
            Tab(text: 'Sedang Berjalan'),
            Tab(text: 'Selesai'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(height: 16.0),
                  // FractionallySizedBox(
                  //   widthFactor: 0.4,
                  //   child: Container(
                  //     padding: EdgeInsets.all(16.0),
                  //     decoration: BoxDecoration(
                  //       color: Colors.grey[200],
                  //       borderRadius: BorderRadius.circular(10.0),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 16.0),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 78, 119, 78),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 200.0,
                    width: boxWidth,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 8.0,
                          left: 8.0,
                          child: CircleAvatar(
                            radius: 20.0,
                            backgroundImage:
                                AssetImage('images/dianpratama.png'),
                          ),
                        ),
                        Positioned(
                          top: 16.0,
                          left: 72.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dian Pratama',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.0,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 5.0), // Jarak antara teks
                              Text(
                                'Sedang Berjalan',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 52.0,
                          left: 16.0,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 8.0), // Padding atas
                                    child: Text(
                                      'Waktu Pengajuan                                                          15 Februari 2023',
                                      style: TextStyle(
                                        fontSize: 10.0,
                                        color: Colors
                                            .white, // Mengubah warna teks menjadi putih
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8.0), // Jarak antara teks
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'Durasi Pinjaman                                                            24 Bulan',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors
                                          .white, // Mengubah warna teks menjadi putih
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8.0), // Jarak antara teks
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'Dana Pinjaman                                                              Rp 15.000.000',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors
                                          .white, // Mengubah warna teks menjadi putih
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 100.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Sudah dibayar',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Rp 8.000.000',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 110.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Sisa pinjaman',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Rp 7.000.000',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.0),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 78, 119, 78),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 200.0,
                    width: boxWidth,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 8.0,
                          left: 8.0,
                          child: CircleAvatar(
                            radius: 20.0,
                            backgroundImage: AssetImage('images/ana.png'),
                          ),
                        ),
                        Positioned(
                          top: 16.0,
                          left: 72.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Anna Aniyyah',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.0,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 5.0), // Jarak antara teks
                              Text(
                                '3 April 2023',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 52.0,
                          left: 16.0,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 8.0), // Padding atas
                                    child: Text(
                                      'Waktu Pengajuan                                                          3 April 2022',
                                      style: TextStyle(
                                        fontSize: 10.0,
                                        color: Colors
                                            .white, // Mengubah warna teks menjadi putih
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8.0), // Jarak antara teks
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'Durasi Pinjaman                                                            12 Bulan',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors
                                          .white, // Mengubah warna teks menjadi putih
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8.0), // Jarak antara teks
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'Dana Pinjaman                                                              Rp 5.000.000',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors
                                          .white, // Mengubah warna teks menjadi putih
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 78, 119, 78),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 200.0,
                    width: boxWidth,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 8.0,
                          left: 8.0,
                          child: CircleAvatar(
                            radius: 20.0,
                            backgroundImage: AssetImage('images/endang.png'),
                          ),
                        ),
                        Positioned(
                          top: 16.0,
                          left: 72.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Deri Renaldi',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.0,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 5.0), // Jarak antara teks
                              Text(
                                '1 Januari 2022',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 52.0,
                          left: 16.0,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 8.0), // Padding atas
                                    child: Text(
                                      'Waktu Pengajuan                                                          1 Januari 2020',
                                      style: TextStyle(
                                        fontSize: 10.0,
                                        color: Colors
                                            .white, // Mengubah warna teks menjadi putih
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8.0), // Jarak antara teks
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'Durasi Pinjaman                                                            24 Bulan',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors
                                          .white, // Mengubah warna teks menjadi putih
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8.0), // Jarak antara teks
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'Dana Pinjaman                                                              Rp 10.000.000',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors
                                          .white, // Mengubah warna teks menjadi putih
                                    ),
                                  ),
                                ),
                              ],
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
        currentIndex: _currentIndex,
        selectedItemColor: Color(0xFF1C4B1C),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/homepage');
              },
              child: Icon(Icons.home, color: Colors.grey),
            ),
            label: 'Home',
            activeIcon: Icon(Icons.home, color: Color(0xFF1C4B1C)),
          ),
          // BottomNavigationBarItem(
          //   icon: GestureDetector(
          //     onTap: () {
          //       Navigator.pushReplacementNamed(context, '/search');
          //     },
          //     child: Icon(Icons.search, color: Colors.grey),
          //   ),
          //   label: "Search",
          //   activeIcon: Icon(Icons.search, color: Color(0xFF1C4B1C)),
          // ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/report');
              },
              child: Icon(Icons.report, color: Colors.grey),
            ),
            label: "Report",
            activeIcon: Icon(Icons.report, color: Color(0xFF1C4B1C)),
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/profile');
              },
              child: Icon(Icons.account_circle, color: Colors.grey),
            ),
            label: "Profile",
            activeIcon: Icon(Icons.account_circle, color: Color(0xFF1C4B1C)),
          ),
        ],
      ),
    );
  }
}
