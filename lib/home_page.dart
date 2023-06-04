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
                        Navigator.of(context).pushNamed('/ajukan_pinjaman');
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
                        Navigator.of(context).pushNamed('/bayar_tagihan');
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
                        Navigator.of(context).pushNamed('/transaksi_terakhir');
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
          SizedBox(height: 16), // jarak di bawah menu layanan
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                child: Text(
                  'Beranda',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Following',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 8.0), // jarak di atas item
                      child: ListTile(
                        trailing: IconButton(
                          icon: Icon(
                            Icons.more_vert,
                            color: Color.fromARGB(255, 78, 118, 78),
                          ),
                          onPressed: () {},
                        ),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/profil_ana.jpg'),
                        ),
                        title: Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            'anaputriainiyyah',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/beranda_anna.jpeg',
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Berbisnis makanan kecil semakin mudah dengan bantuan aplikasi ini. Dengan dukungan dari para investor, saya bisa terus mengembangkan usaha dan menjangkau lebih banyak pelanggan di Bandung :)',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: ListTile(
                        trailing: IconButton(
                          icon: Icon(
                            Icons.more_vert,
                            color: Color.fromARGB(255, 78, 118, 78),
                          ),
                          onPressed: () {},
                        ),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/profil_ana.jpg'),
                        ),
                        title: Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            'anaputriainiyyah',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/beranda_anna.jpeg',
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Berbisnis makanan kecil semakin mudah dengan bantuan aplikasi ini. Dengan dukungan dari para investor, saya bisa terus mengembangkan usaha dan menjangkau lebih banyak pelanggan di Bandung :)',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
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
                Navigator.pushReplacementNamed(context, '/search');
              },
              child: Icon(Icons.search, color: Colors.grey),
            ),
            label: "Search",
            activeIcon: Icon(Icons.search, color: Color(0xFF1C4B1C)),
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
