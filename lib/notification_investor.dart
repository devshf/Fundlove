import 'package:flutter/material.dart';

void main() {
  runApp(const HalamanNotifikasiInvestor());
}

class HalamanNotifikasiInvestor extends StatelessWidget {
  const HalamanNotifikasiInvestor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const NotificationPage(),
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
            _buildNotificationItem(
              title:
                  'Pendanaan sukses dilakukan ke mitra Kerupuk Kulit Barokah!',
              subtitle: '1 jam yang lalu',
            ),
            const SizedBox(height: 16),
            _buildNotificationItem(
              title: 'Selamat akunmu telah terverifikasi!',
              subtitle: '1 hari yang lalu',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationItem({
    required String title,
    required String subtitle,
  }) {
    return ListTile(
      leading: Icon(Icons.notifications),
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: () {},
    );
  }
}
