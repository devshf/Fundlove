import 'package:flutter/material.dart';
import 'homepage_investor.dart';
import 'login_page_investor.dart';
import 'list_umkm.dart';
import 'notification_investor.dart';
import 'topup_investor.dart';
import 'tarik_dana_investor.dart';
import 'detail_topup_investor.dart';
import 'profile_investor.dart';
import 'laporan_detail_permitra.dart';

void main() {
  runApp(const ReportPage());
}

// class HalamanReport extends StatelessWidget {
//   const HalamanReport({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const ReportPage(),
//     );
//   }
// }

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  int _currentIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Laporan',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            tabs: [
              Tab(text: 'Pendanaan Aktif'),
              Tab(text: 'Selesai'),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TabBarView(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(6, 6, 16, 6),
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
                                padding:
                                    EdgeInsets.only(left: 16.0, bottom: 16.0),
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
                    Text(
                      'Laporan Per Mitra',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 16.0)),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color.fromARGB(255, 202, 202, 202),
                          width: 1,
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
                        trailing: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/detail_permitra');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 78, 119, 78),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            minimumSize: Size(80, 36),
                          ),
                          child: Text(
                            'Selengkapnya',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('images/endang.png'),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 16.0)),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color.fromARGB(255, 202, 202, 202),
                          width: 1,
                        ),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(10),
                        title: Text("Kokom Komariah",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Usaha Laundry Flowers"),
                            Row(
                              children: [
                                Icon(Icons.location_on, size: 12),
                                SizedBox(width: 4),
                                Text(
                                  "Lenteng Agung, Jakarta Selatan",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        trailing: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 78, 119, 78),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            minimumSize: Size(80, 36),
                          ),
                          child: Text(
                            'Selengkapnya',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('images/endang.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color.fromARGB(255, 202, 202, 202),
                          width: 2,
                        ),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(10),
                        title: Text("Bunga Hasna",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Usaha Warung Makan"),
                            Row(
                              children: [
                                Icon(Icons.location_on, size: 12),
                                SizedBox(width: 4),
                                Text(
                                  "Bandung, Jawa Barat",
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
                                        'Rp8.000.000',
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
                                        'Keuntungan',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Rp2.300.000',
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
                        trailing: Text('Selesai'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
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
