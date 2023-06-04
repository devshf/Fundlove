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
              color: Colors.white, // Warna latar belakang banner
              child: Column(
                children: [
                  Container(
                    height: 70,
                    color: Color.fromARGB(
                        255, 78, 119, 78), // Warna latar belakang banner
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 16), // Atur jarak atas
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.arrow_back_ios),
                                  color: Colors.white,
                                  onPressed: () {
                                    // Aksi tombol back
                                  },
                                ),
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://images.unsplash.com/photo-1541710430735-5fca14c95b00?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ'),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Anna Putri Aniyyah',
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
                                padding: EdgeInsets.only(
                                    left: 90), // Atur jarak dari kiri dan bawah
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
                        // Tambahkan percakapan antara pengguna di sini
                        Container(
                          margin: EdgeInsets.only(
                              bottom: 12), // Atur jarak antara kotak percakapan
                          child: BubbleChat(
                            message: 'Hallo, apa kabar?',
                            isMe: true,
                            padding: EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 14), // Atur ukuran kotak percakapan
                            time: '10:30', // Waktu pesan
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              bottom: 12), // Atur jarak antara kotak percakapan
                          child: BubbleChat(
                            message: 'Hai, kabar baik. Kamu gmn??',
                            isMe: false,
                            padding: EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 14), // Atur ukuran kotak percakapan
                            time: '10:32', // Waktu pesan
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              bottom: 12), // Atur jarak antara kotak percakapan
                          child: BubbleChat(
                            message: 'Baik juga. Apa kesibukanmu sekarang?',
                            isMe: true,
                            padding: EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 14), // Atur ukuran kotak percakapan
                            time: '10:35', // Waktu pesan
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              bottom: 12), // Atur jarak antara kotak percakapan
                          child: BubbleChat(
                            message: 'Sibuk berjualan baju nih...',
                            isMe: false,
                            padding: EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 14), // Atur ukuran kotak percakapan
                            time: '10:37', // Waktu pesan
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              bottom: 12), // Atur jarak antara kotak percakapan
                          child: BubbleChat(
                            message: 'Wah keren yah, sukses!',
                            isMe: true,
                            padding: EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 14), // Atur ukuran kotak percakapan
                            time: '10:39', // Waktu pesan
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              bottom: 12), // Atur jarak antara kotak percakapan
                          child: BubbleChat(
                            message: 'Terima kasih...',
                            isMe: false,
                            padding: EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 14), // Atur ukuran kotak percakapan
                            time: '10:42', // Waktu pesan
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 14), // Atur padding kotak pesan
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
                          onPressed: () {
                            // Aksi tombol kirim pesan
                          },
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
