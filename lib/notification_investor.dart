import 'package:flutter/material.dart';
import 'detail_mitra.dart';
import 'package:flutter/gestures.dart';

void main() {
  runApp(const HalamanNotifikasiInvestor());
}

class HalamanNotifikasiInvestor extends StatelessWidget {
  const HalamanNotifikasiInvestor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotificationPage(),
    );
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Color(0xFF1C4B1C),
        title: const Text('Notifikasi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            notification(
              title: 'Pendanaan UMKM',
              subtitle: 'Mitra Warung Seblak',
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new HalamanDetailMitra()));
              },
            ),
            const SizedBox(height: 16),
            notification(
              title: 'Selamat akunmu telah terverifikasi!',
              subtitle: '1 hari yang lalu',
            ),
            const SizedBox(height: 16),
            notification(
              title:
                  'Pendanaan sukses dilakukan ke mitra Kerupuk Kulit Barokah!',
              subtitle: '1 jam yang lalu',
            ),
          ],
        ),
      ),
    );
  }

  Widget notification({
    required String title,
    required String subtitle,
    VoidCallback? onPressed,
  }) {
    return ListTile(
      leading: Icon(Icons.notifications),
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: onPressed,
    );
  }
}
