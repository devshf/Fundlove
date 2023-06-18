import 'package:flutter/material.dart';
import 'home_page.dart';
import 'chat.dart';

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
      home: DetailChat(),
    );
  }
}

class DetailChat extends StatelessWidget {
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
                      child: Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.arrow_back_ios),
                                  color: Colors.white,
                                  onPressed: () {},
                                ),
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('images/dianpratama.png'),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Dian Pratama',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 90),
                                child: Text(
                                  'Aktif 2 jam yang lalu',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.all(20),
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 12),
                          child: BubbleChat(
                            message: 'Hallo pak',
                            isMe: true,
                            padding: EdgeInsets.symmetric(
                                horizontal: 14, vertical: 14),
                            time: '10:30',
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 12),
                          child: BubbleChat(
                            message: 'Ada yang bisa dibantu?',
                            isMe: false,
                            padding: EdgeInsets.symmetric(
                                horizontal: 14, vertical: 14),
                            time: '10:32',
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 12),
                          child: BubbleChat(
                            message:
                                'Saya izin konfirmasi tentang pembayaran, apakah sudah masuk?',
                            isMe: true,
                            padding: EdgeInsets.symmetric(
                                horizontal: 14, vertical: 14),
                            time: '10:35',
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 12),
                          child: BubbleChat(
                            message: 'Sudah masuk',
                            isMe: false,
                            padding: EdgeInsets.symmetric(
                                horizontal: 14, vertical: 14),
                            time: '10:37',
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 12),
                          child: BubbleChat(
                            message: 'Baik pak, terimakasih',
                            isMe: true,
                            padding: EdgeInsets.symmetric(
                                horizontal: 14, vertical: 14),
                            time: '10:39',
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 12),
                          child: BubbleChat(
                            message: 'Sama-sama',
                            isMe: false,
                            padding: EdgeInsets.symmetric(
                                horizontal: 14, vertical: 14),
                            time: '10:42',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Kirim pesan',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        IconButton(
                          icon: Icon(Icons.send),
                          onPressed: () {},
                        ),
                      ],
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

class BubbleChat extends StatelessWidget {
  final String message;
  final bool isMe;
  final EdgeInsets padding;
  final String time;

  const BubbleChat(
      {required this.message,
      required this.isMe,
      required this.padding,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            padding: padding,
            decoration: BoxDecoration(
              color: isMe
                  ? Color.fromARGB(255, 248, 233, 191)
                  : Color.fromARGB(255, 240, 228, 228),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              message,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 4),
          Text(
            time,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
