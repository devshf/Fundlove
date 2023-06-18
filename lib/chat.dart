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
      'name': 'Dian Pratama',
      'time': '17.26',
      'backgroundImage': 'images/dianpratama.png',
      'lastMessage': 'Sama-sama',
      'unreadCount': 1,
    },
    {
      'name': 'Anna Anniyah',
      'time': '15.35',
      'backgroundImage': 'images/ana.png',
      'lastMessage': 'Berbisnis dengan...',
      'unreadCount': 1,
    },
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
                      children: [],
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
                                AssetImage(chatList[index]['backgroundImage']),
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
