import 'package:flutter/material.dart';

void main() => runApp(RiwayatPendanaanInvestor());

class RiwayatPendanaanInvestor extends StatelessWidget {
  const RiwayatPendanaanInvestor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Riwayat Transaksi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FiturChat(),
    );
  }
}

class FiturChat extends StatelessWidget {
  final List<Map<String, dynamic>> chatList = [
    {
      'name': 'Alissa Susanti',
      'time': '3 April 2023',
      'photoUrl':
          'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b',
      'message': 'Dana pinjaman = Rp 5.000.000'
    },
    {
      'name': 'Dewi Halimah',
      'time': '1 Januari 2022',
      'photoUrl':
          'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b',
      'message': 'Dana pinjaman = Rp 10.000.000'
    },
    {
      'name': 'Alissa Susanti',
      'time': '17 September 2021',
      'photoUrl':
          'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b',
      'message': 'Dana pinjaman = Rp 3.000.000'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Riwayat Pendanaan',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
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
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  Container(
                    // height: 70,
                    color: Colors.transparent,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  SizedBox(height: 4),
                  Expanded(
                    child: ListView.separated(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      itemCount: chatList.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider(
                          color: Colors.grey,
                          height: 1,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                NetworkImage(chatList[index]['photoUrl']),
                          ),
                          title: Row(
                            children: [
                              Expanded(
                                child: Text(chatList[index]['name']),
                              ),
                              Text(
                                chatList[index]['time'],
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          subtitle: Text(
                            chatList[index]['message'],
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
