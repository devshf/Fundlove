import 'package:flutter/material.dart';
import 'home_page.dart';
import 'homepage_investor.dart';
import 'detailchat.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HalamanFiturChat(),
    );
  }
}

class HalamanFiturChat extends StatelessWidget {
  final List<Map<String, dynamic>> chatList = [
    {
      'name': 'Anna Putri Aniyyah',
      'time': '17.26',
      'photoUrl':
          'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b',
      'lastMessage': 'Terimakasih..',
      'unreadCount':
          1, // Menambahkan properti untuk jumlah pesan yang belum dibaca
    },
    {
      'name': 'Dewi Susilawati',
      'time': '15.35',
      'photoUrl':
          'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b',
      'lastMessage': 'Berbisnis dengan...',
      'unreadCount': 1,
    },
    {
      'name': 'Mario Maradona',
      'time': '12.07',
      'photoUrl':
          'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b',
      'lastMessage': 'Saya merasa senang ber...',
      'unreadCount': 0,
    },
    {
      'name': 'Hisyam Ramadhan',
      'time': 'Kemarin',
      'photoUrl':
          'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b',
      'lastMessage': 'Salam kenal dari saya...',
      'unreadCount': 0,
    },
    {
      'name': 'Ananda Prasetyo',
      'time': 'Kemarin',
      'photoUrl':
          'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b',
      'lastMessage': 'Kesempatan yang berharga...',
      'unreadCount': 0,
    },
    {
      'name': 'Susi Susanti',
      'time': 'Kemarin',
      'photoUrl':
          'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b',
      'lastMessage': 'Saya merasa bersyukur...',
      'unreadCount': 0,
    },
    // ...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 70,
                    color: Color.fromARGB(255, 78, 119, 78),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                          Text(
                            'Chat',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.search),
                                SizedBox(width: 10),
                                Text(
                                  'Cari',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      itemCount: chatList.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(height: 10);
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
                          subtitle: Text(chatList[index]['lastMessage']),
                          trailing: chatList[index]['unreadCount'] > 0
                              ? Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 78, 119, 78),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Text(
                                    chatList[index]['unreadCount'].toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                              : null,
                          onTap: () {
                            Navigator.of(context).pushNamed('/detail_chat');
                          },
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
