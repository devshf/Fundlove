import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(NotificationApp());
}

class NotificationApp extends StatelessWidget {
  static const nameRoute = '/notifikasi';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notification App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: NotificationScreen(),
    );
  }
}

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool isFollowing = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifikasi',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          indicatorColor: Colors.black,
          unselectedLabelColor: Colors.black,
          tabs: [
            Tab(text: 'Semua'),
            Tab(text: 'Pinjaman'),
            Tab(text: 'Following'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildNotificationRow(
                      'Farah mulai mengikuti Anda',
                      // iconData: Icons.person,
                      trailing: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isFollowing = !isFollowing;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            isFollowing ? Colors.green : Colors.white,
                          ),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              side: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        child: Text(
                          isFollowing ? 'Mengikuti' : 'Ikuti',
                        ),
                      ),
                      avatar: CircleAvatar(
                        backgroundImage: AssetImage('images/profil_farah.png'),
                      ),
                      subtitle: '30 menit yang lalu',
                    ),
                    _buildNotificationRow(
                      'Selamat! Peminjaman Anda telah disetujui',
                      subtitle: '2 jam yang lalu',
                    ),
                    _buildNotificationRow(
                      'Pembayaran sukses! Tagihan Anda sebesar Rp 750.000 telah terbayar',
                      subtitle: '1 hari yang lalu',
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildNotificationRow(
                      'Selamat! Peminjaman Anda telah disetujui',
                      subtitle: '2 jam yang lalu',
                    ),
                    _buildNotificationRow(
                      'Pembayaran sukses! Tagihan Anda sebesar Rp 750.000 telah terbayar',
                      subtitle: '1 hari yang lalu',
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildNotificationRow(
                      'Farah mulai mengikuti Anda',
                      // iconData: Icons.person,
                      trailing: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isFollowing = !isFollowing;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            isFollowing ? Colors.green : Colors.white,
                          ),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              side: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        child: Text(
                          isFollowing ? 'Mengikuti' : 'Ikuti',
                        ),
                      ),
                      avatar: CircleAvatar(
                        backgroundImage: AssetImage('images/profil_farah.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationRow(
    String text, {
    IconData? iconData,
    Widget? trailing,
    Widget? avatar,
    String? subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          if (avatar != null) avatar,
          if (avatar != null) SizedBox(width: 8.0),
          if (iconData != null) Icon(iconData),
          if (iconData != null) SizedBox(width: 8.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (subtitle != null)
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
            ],
          ),
          Spacer(),
          if (trailing != null) trailing,
        ],
      ),
    );
  }
}
