import 'package:flutter/material.dart';

void main() {
  runApp(ReportApp());
}

class ReportApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.0),
                  FractionallySizedBox(
                    widthFactor: 0.4,
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.add_circle,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 6.0),
                              Text(
                                'Buat Laporan',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 6.0),
                        ],
                      ),
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
                    width: 350.0,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 16.0,
                          left: 16.0,
                          child: CircleAvatar(
                            radius: 20.0,
                            backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1541710430735-5fca14c95b00?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
                            ),
                          ),
                        ),
                        Positioned(
                          top: 16.0,
                          left: 72.0,
                          child: Row(
                            children: [
                              Text(
                                'Bayu Permana',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.0,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 12.0),
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
                          bottom: 16.0,
                          left: 16.0,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Waktu Pengajuan                           15 Februari 2023',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'Durasi Pinjaman                            24 Bulan',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'Dana Pinjaman                               Rp 15.000.000',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.white,
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
          ListView.builder(
            itemCount: 3, // Ganti angka ini dengan jumlah laporan yang selesai
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 78, 119, 78),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 200.0,
                width: 350.0,
                child: Stack(
                  children: [
                    Positioned(
                      top: 16.0,
                      left: 16.0,
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1541710430735-5fca14c95b00?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
                        ),
                      ),
                    ),
                    Positioned(
                      top: 16.0,
                      left: 72.0,
                      child: Row(
                        children: [
                          Text(
                            'Bayu Permana',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10.0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 12.0), // Jarak antara teks
                          Text(
                            'Selesai',
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
                      bottom: 16.0,
                      left: 16.0,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Waktu Pengajuan                           15 Februari 2023',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors
                                    .white, // Mengubah warna teks menjadi putih
                              ),
                            ),
                            SizedBox(height: 8.0), // Jarak antara teks
                            Text(
                              'Durasi Pinjaman                            24 Bulan',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors
                                    .white, // Mengubah warna teks menjadi putih
                              ),
                            ),
                            SizedBox(height: 8.0), // Jarak antara teks
                            Text(
                              'Dana Pinjaman                               Rp 15.000.000',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors
                                    .white, // Mengubah warna teks menjadi putih
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
