import 'package:flutter/material.dart';
import 'notifikasi_semua.dart';
import 'chat.dart';
import 'pinjaman.dart';
import 'tagihan.dart';
import 'pembayaran_tagihan.dart';
import 'riwayat_transaksi.dart';
import 'search.dart';
import 'profile.dart';
import 'reportmenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page Member',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  static const nameRoute = '/homepage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Selamat Datang, Maria!",
          style: TextStyle(color: Color(0xFF1C4B1C)),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Color(0xFF1C4B1C),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/notifikasi');
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
          Expanded(
            child: Container(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Color(0xFF1C4B1C),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      'images/banner.jpg',
                      width: 200,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1C4B1C),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    //padding: EdgeInsets.only(top: 16),
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
                            "Rp5.000.000",
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
                              Navigator.of(context).pushNamed('/topup_member');
                            },
                          ),
                          SizedBox(width: 16),
                          IconButton(
                            icon: Icon(Icons.money, color: Colors.white),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed('/tarik_dana_member');
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed('/ajukan_pinjaman');
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.add_circle,
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Color(0xFF1C4B1C),
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Ajukan Pinjaman',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/tagihan');
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.assignment_add,
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Color(0xFF1C4B1C),
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Tagihan',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed('/bayar_tagihan');
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.payment_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Color(0xFF1C4B1C),
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Pembayaran',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed('/transaksi_terakhir');
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.watch_later_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Color(0xFF1C4B1C),
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Transaksi Terakhir',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 24, left: 4, bottom: 16),
                      child: Text(
                        'Riwayat Pengajuan Pinjaman',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Color.fromARGB(255, 202, 202, 202),
                        width: 1,
                      ),
                    ),
                    height: 70,
                    child: Row(
                      children: [
                        // Padding(
                        //   padding: EdgeInsets.only(left: 10),
                        //   child: CircleAvatar(
                        //     radius: 20,
                        //     backgroundImage: AssetImage('images/dianpratama.png'),
                        //   ),
                        // ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Pengajuan 1",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8),
                              ),
                              Text(
                                "Nominal: Rp. ..... ",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "Waktu Pengajuan: ",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: BorderSide(
                                color: Color.fromARGB(255, 78, 119, 78),
                                width: 2,
                              ),
                            ),
                            minimumSize: Size(80, 36),
                          ),
                          child: Text(
                            'Menunggu',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 78, 119, 78),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
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
        onTap: onTabTapped,
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
