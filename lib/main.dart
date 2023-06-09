import 'package:flutter/material.dart';
import 'splashscreen.dart';
import 'login_sebagai.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'notifikasi_semua.dart';
import 'chat.dart';
import 'pinjaman.dart';
import 'tagihan.dart';
import 'pembayaran_tagihan.dart';
import 'riwayat_transaksi.dart';
import 'search.dart';
import 'profile.dart';
import 'reportmenu.dart';
import 'ubah_sandi.dart';
import 'data_pribadi.dart';
import 'pusat_bantuan.dart';
import 'metode_tagihan.dart';
import 'detailchat.dart';

//Investor
import 'homepage_investor.dart';
import 'login_page_investor.dart';
import 'list_umkm.dart';
import 'notification_investor.dart';
import 'topup_investor.dart';
import 'tarik_dana_investor.dart';
import 'detail_topup_investor.dart';
import 'report_active_investor.dart';
import 'profile_investor.dart';
import 'detail_mitra.dart';
import 'data_pribadi_investor.dart';
import 'riwayat_pendanaan_investor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: SplashScreen(),
      // initialRoute: '/homepage',
      routes: {
        //Member
        '/splash': (context) => SplashScreen(),
        '/login_sebagai': (context) => LoginSebagai(),
        '/login_page': (context) => HalamanLogin(),
        '/homepage': (context) => HomePage(),
        '/notifikasi': (context) => NotificationApp(),
        '/chat': (context) => HalamanFiturChat(),
        '/ajukan_pinjaman': (context) => HalamanPinjaman(),
        '/tagihan': (context) => HalamanTagihan(),
        '/bayar_tagihan': (context) => HalamanPembayaranTagihan(),
        '/transaksi_terakhir': (context) => TransaksiTerakhir(),
        '/search': (context) => MenuSearchPage(),
        '/profile': (context) => ProfileScreen(),
        '/report': (context) => ReportScreen(),
        '/password': (context) => ChangePasswordPage(),
        '/data_pribadi': (context) => HalamanDataPribadi(),
        '/pusat_bantuan': (context) => HalamanPusatBantuan(),
        '/metode_tagihan': (context) => HalamanTopUp(),
        '/detail_chat': (context) => DetailChat(),

        //Investor
        '/homepage_investor': (context) => HomePageInvestor(),
        '/login_page_investor': (context) => HalamanLoginInvestor(),
        '/list_umkm': (context) => HalamanListUmkm(),
        '/notifikasi_investor': (context) => HalamanNotifikasiInvestor(),
        '/topup_investor': (context) => HalamanTopupInvestor(),
        '/tarik_dana_investor': (context) => HalamanTarikDana(),
        '/detail_topup_investor': (context) => HalamanTarikDana(),
        '/report_investor': (context) => ReportPage(),
        '/profile_investor': (context) => ProfileScreenPage(),
        '/detail_mitra': (context) => HalamanDetailMitra(),
        '/data_pribadi_investor': (context) => HalamanDataPribadiInvestor(),
        '/riwayat_pendanaan_investor': (context) => RiwayatPendanaanInvestor(),
      },
    );
  }
}
