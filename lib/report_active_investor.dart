import 'package:flutter/material.dart';
import 'homepage_investor.dart';
import 'login_page_investor.dart';
import 'list_umkm.dart';
import 'notification_investor.dart';
import 'topup_investor.dart';
import 'tarik_dana_investor.dart';
import 'detail_topup_investor.dart';
import 'search_investor.dart';
import 'profile_investor.dart';

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
                child: Text(
                  'Anda sedang mendanai 2 mitra',
                  style: TextStyle(
                    color: Color.fromARGB(255, 58, 58, 58),
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              Center(child: Text('Konten 2')),
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
