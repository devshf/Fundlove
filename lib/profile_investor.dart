import 'package:flutter/material.dart';
import 'homepage_investor.dart';
import 'login_page_investor.dart';
import 'list_umkm.dart';
import 'notification_investor.dart';
import 'topup_investor.dart';
import 'tarik_dana_investor.dart';
import 'detail_topup_investor.dart';
import 'edit_profil_investor.dart';
import 'data_pribadi_investor.dart';
import 'riwayat_pendanaan_investor.dart';
import 'pusat_bantuan.dart';
import 'edit_profil_investor.dart';
import 'ubah_sandi_investor.dart';

void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Halaman Profil',
      theme: ThemeData(
          primaryColor: Color.fromARGB(255, 78, 119, 78),
          backgroundColor: Color.fromARGB(255, 78, 119, 78),
          scaffoldBackgroundColor: Colors.transparent),
      home: ProfileScreenPage(),
    );
  }
}

class ProfileScreenPage extends StatefulWidget {
  @override
  _ProfileScreenPageState createState() => _ProfileScreenPageState();
}

class _ProfileScreenPageState extends State<ProfileScreenPage> {
  int _currentIndex = 2;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Color.fromARGB(255, 78, 119, 78),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('images/dianpratama.png'),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Dian Pratama',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[200],
                                ),
                              ),
                              SizedBox(height: 0),
                              Text(
                                '@dian.pratama',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[200],
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.grey[200],
                                    size: 14,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Jakarta, Indonesia',
                                    style: TextStyle(
                                      color: Colors.grey[200],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed('/edit_profil_investor');
                          },
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16, right: 32, left: 32, bottom: 16),
            child: Card(
              borderOnForeground: false,
              elevation: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Rp100.000.000',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Total aset',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '3',
                          style: TextStyle(
                            // textAlignment: Center,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Pendanaan Berhasil',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // pembatas
          // Divider(
          //   color: Color.fromARGB(255, 78, 119, 78),
          // ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 16, left: 16, bottom: 8),
              child: Text(
                'Pengaturan Akun',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          ListTile(
            leading: Icon(Icons.app_settings_alt_outlined),
            title: Text('Ubah Password'),
            onTap: () {
              Navigator.of(context).pushNamed('/ubah_sandi_investor');
            },
          ),
          ListTile(
            leading: Icon(Icons.security_outlined),
            title: Text('Data Pribadi'),
            onTap: () {
              Navigator.of(context).pushNamed('/data_pribadi_investor');
            },
          ),
          ListTile(
            leading: Icon(Icons.history_outlined),
            title: Text('Riwayat Pendanaan'),
            onTap: () {
              Navigator.of(context).pushNamed('/transaksi_terakhir');
            },
          ),
          ListTile(
            leading: Icon(Icons.help_outline_outlined),
            title: Text('Pusat Bantuan'),
            onTap: () {
              Navigator.of(context).pushNamed('/pusat_bantuan');
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Color.fromARGB(255, 78, 119, 78),
        onTap: onTabTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/homepage_investor');
              },
              child: Icon(Icons.home, color: Colors.grey),
            ),
            label: 'Home',
            activeIcon:
                Icon(Icons.home, color: Color.fromARGB(255, 78, 119, 78)),
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/report_investor');
              },
              child: Icon(Icons.report, color: Colors.grey),
            ),
            label: "Report",
            activeIcon:
                Icon(Icons.report, color: Color.fromARGB(255, 78, 119, 78)),
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/profile_investor');
              },
              child: Icon(Icons.account_circle, color: Colors.grey),
            ),
            label: "Profile",
            activeIcon: Icon(Icons.account_circle,
                color: Color.fromARGB(255, 78, 119, 78)),
          ),
        ],
      ),
    );
  }
}
