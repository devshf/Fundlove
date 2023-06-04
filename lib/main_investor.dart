import 'package:flutter/material.dart';
// import 'package:fundlove/data_pribadi.dart';
// import 'package:fundlove/detail_mitra.dart';
// import 'package:fundlove/detail_topup.dart';
// import 'package:fundlove/edit_profil.dart';
// import 'package:fundlove/home.dart';
// import 'package:fundlove/laporan_detail_permitra.dart';
// import 'package:fundlove/list_umkm.dart';
// import 'package:fundlove/login_page.dart';
// import 'package:fundlove/notification_investor.dart';
// //import 'package:fundlove/onboard.dart';
// import 'package:fundlove/profile.dart';
// import 'package:fundlove/register_page.dart';
// import 'package:fundlove/report_active.dart';
// import 'package:fundlove/riwayat_pendanaan.dart';
// import 'package:fundlove/search.dart';
// import 'package:fundlove/splashscreen.dart';
// import 'package:fundlove/tarik_dana.dart';
// import 'package:fundlove/topup.dart';
// import 'package:fundlove/ubah_sandi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      // initialRoute: '/homepage',
      // investor:
      routes: {
        // '/data_pribadi': (context) => HalamanDataPribadi(),
        // '/detail_mitra': (context) => HalamanDetailMitra(),
        // '/detail_topup': (context) => HalamanDetailTopUp(),
        // '/edit_profile': (context) => HalamanEditProfile(),
        // '/home': (context) => HomePage(),
        // '/laporan_detail_mitra': (context) => DetailLaporanPerMitra(),
        // '/list_umkm': (context) => HalamanListUmkm(),
        // '/login': (context) => PageLogin(),
        // '/notifikasi': (context) => HalamanNotifikasi(),
        // '/profile': (context) => ProfilePage(),
        // '/register': (context) => Register(),
        // 'report': (context) => HalamanReport(),
        // 'riwayat_pendanaan': (context) => RiwayatPendanaan(),
        // 'splashscreen': (context) => SplashScreen(),
        // 'tarik_dana': (context) => HalamanTarikDana(),
        // 'topup': (context) => HalamanTopUp(),
        // 'ubah_sandi': (context) => UbahSandi(),
      },
      // debugShowCheckedModeBanner: false,
      // title: 'Home Page Member',
      // theme: ThemeData(
      //   primarySwatch: Colors.green,
      // ),
    );
  }
}
