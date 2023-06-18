import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fundlove/firebase_options.dart';
import 'package:flutter/material.dart';
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
import 'edit_profil.dart';

void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Halaman Profil',
      theme: ThemeData(
        primaryColor: Color(0xFF1C4B1C),
        accentColor: Color(0xFF1C4B1C),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentIndex = 2;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // jika ditap
        },
        backgroundColor: Colors.grey,
        child: const Icon(Icons.add_rounded),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Card(
              color: Color.fromARGB(255, 78, 119, 78),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              AssetImage('images/profil_maria.jpg'),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Maria Purnamasari',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                '@mariapurnama90',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[200],
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.grey[200],
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Bandung, Indonesia',
                                    style: TextStyle(
                                      color: Colors.grey[200],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed('/edit_profil_member');
                          },
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Pelaku Usaha Makanan',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Berbisnis makanan kecil semakin mudah dengan bantuan aplikasi ini. Dengan dukungan dari para investor, saya bisa terus mengembangkan usaha dan menjangkau lebih banyak pelanggan di Bandung :)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 16, left: 16, bottom: 8),
              child: Text(
                'Pengaturan Akun',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.app_settings_alt_outlined),
            title: Text('Ubah Password'),
            onTap: () {
              Navigator.of(context).pushNamed('/password');
            },
          ),
          ListTile(
            leading: Icon(Icons.security_outlined),
            title: Text('Data Pribadi'),
            onTap: () {
              Navigator.of(context).pushNamed('/data_pribadi_investor');
            },
          ),
          ListTile(
            leading: Icon(Icons.history_outlined),
            title: Text('Riwayat Pendanaan'),
            onTap: () {
              Navigator.of(context).pushNamed('/transaksi_terakhir');
            },
          ),
          ListTile(
            leading: Icon(Icons.help_outline_outlined),
            title: Text('Pusat Bantuan'),
            onTap: () {
              Navigator.of(context).pushNamed('/pusat_bantuan');
            },
          ),
          ListTile(
            title: Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/login_sebagai');
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  backgroundColor: Color.fromARGB(255, 78, 119, 78),
                  minimumSize: Size(48, 48),
                ),
                child: Text('Logout'),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Color(0xFF1C4B1C),
        onTap: onTabTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/homepage');
              },
              child: Icon(Icons.home, color: Colors.grey),
            ),
            label: 'Home',
            activeIcon: Icon(Icons.home, color: Color(0xFF1C4B1C)),
          ),
          // BottomNavigationBarItem(
          //   icon: GestureDetector(
          //     onTap: () {
          //       Navigator.pushReplacementNamed(context, '/search');
          //     },
          //     child: Icon(Icons.search, color: Colors.grey),
          //   ),
          //   label: "Search",
          //   activeIcon: Icon(Icons.search, color: Color(0xFF1C4B1C)),
          // ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/report');
              },
              child: Icon(Icons.report, color: Colors.grey),
            ),
            label: "Report",
            activeIcon: Icon(Icons.report, color: Color(0xFF1C4B1C)),
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/profile');
              },
              child: Icon(Icons.account_circle, color: Colors.grey),
            ),
            label: "Profile",
            activeIcon: Icon(Icons.account_circle, color: Color(0xFF1C4B1C)),
          ),
        ],
      ),
    );
  }
}



// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(ProfilePage());
// }

// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Halaman Profil',
//       theme: ThemeData(
//         primaryColor: Color(0xFF1C4B1C),
//         accentColor: Color(0xFF1C4B1C),
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: ProfileScreen(),
//     );
//   }
// }

// class ProfileScreen extends StatefulWidget {
//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   int _currentIndex = 2;

//   final CollectionReference _data_pribadi =
//       FirebaseFirestore.instance.collection('data_pribadi');

//   void onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Profil',
//           style: TextStyle(
//             color: Colors.black,
//           ),
//         ),
//         backgroundColor: Colors.white,
//         elevation: 0,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.of(context).pushNamed('/ajukan_pinjaman');
//         },
//         backgroundColor: Colors.grey,
//         child: const Icon(Icons.add_rounded),
//       ),
//       body: StreamBuilder(
//         stream: _data_pribadi.snapshots(),
//         builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
//           // if (!streamSnapshot.hasData) {
//           //   return CircularProgressIndicator();
//           // }

//           return ListView.builder(
//             itemCount: streamSnapshot.data!.docs.length,
//             itemBuilder: (context, index) {
//               final DocumentSnapshot documentSnapshot =
//                   streamSnapshot.data!.docs[index];
//               return Container(
//                 margin: const EdgeInsets.all(10),
//                 child: Column(
//                   children: <Widget>[
//                     ListTile(
//                       title: Padding(
//                         padding: EdgeInsets.all(16.0),
//                         child: Card(
//                           color: Color.fromARGB(255, 78, 119, 78),
//                           child: Padding(
//                             padding: EdgeInsets.all(16.0),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: <Widget>[
//                                 Padding(
//                                   padding: EdgeInsets.all(16.0),
//                                   child: Card(
//                                     color: Color.fromARGB(255, 78, 119, 78),
//                                     child: Padding(
//                                       padding: EdgeInsets.all(16.0),
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: <Widget>[
//                                           Row(
//                                             children: <Widget>[
//                                               CircleAvatar(
//                                                 radius: 40,
//                                                 backgroundImage: AssetImage(
//                                                     'images/profil_maria.jpg'),
//                                               ),
//                                               SizedBox(width: 16),
//                                               Expanded(
//                                                 child: Column(
//                                                   crossAxisAlignment:
//                                                       CrossAxisAlignment.start,
//                                                   children: <Widget>[
//                                                     Text(
//                                                       'Maria Purnamasari',
//                                                       style: TextStyle(
//                                                         fontSize: 24,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         color: Colors.white,
//                                                       ),
//                                                     ),
//                                                     SizedBox(height: 8),
//                                                     Text(
//                                                       '@mariapurnama90',
//                                                       style: TextStyle(
//                                                         fontSize: 16,
//                                                         color: Colors.grey[200],
//                                                       ),
//                                                     ),
//                                                     Row(
//                                                       children: <Widget>[
//                                                         Icon(
//                                                           Icons.location_on,
//                                                           color:
//                                                               Colors.grey[200],
//                                                         ),
//                                                         SizedBox(width: 8),
//                                                         Text(
//                                                           'Bandung, Indonesia',
//                                                           style: TextStyle(
//                                                             color: Colors
//                                                                 .grey[200],
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                               IconButton(
//                                                 icon: Icon(Icons.edit),
//                                                 onPressed: () {
//                                                   Navigator.of(context)
//                                                       .pushNamed(
//                                                           '/edit_profil_member');
//                                                 },
//                                                 color: Colors.white,
//                                               ),
//                                             ],
//                                           ),
//                                           SizedBox(height: 8),
//                                           Text(
//                                             'Pelaku Usaha Makanan',
//                                             style: TextStyle(
//                                               fontSize: 14,
//                                               color: Colors.white,
//                                             ),
//                                           ),
//                                           SizedBox(height: 8),
//                                           Text(
//                                             'Berbisnis makanan kecil semakin mudah dengan bantuan aplikasi ini. Dengan dukungan dari para investor, saya bisa terus mengembangkan usaha dan menjangkau lebih banyak pelanggan di Bandung :)',
//                                             style: TextStyle(
//                                               fontSize: 12,
//                                               color: Colors.white,
//                                             ),
//                                             textAlign: TextAlign.justify,
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Padding(
//                         padding: EdgeInsets.only(top: 16, left: 16, bottom: 8),
//                         child: Text(
//                           'Pengaturan Akun',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                     ListTile(
//                       leading: Icon(Icons.app_settings_alt_outlined),
//                       title: Text('Ubah Password'),
//                       onTap: () {
//                         Navigator.of(context).pushNamed('/password');
//                       },
//                     ),
//                     ListTile(
//                       leading: Icon(Icons.security_outlined),
//                       title: Text('Data Pribadi'),
//                       onTap: () {
//                         Navigator.of(context)
//                             .pushNamed('/data_pribadi_investor');
//                       },
//                     ),
//                     ListTile(
//                       leading: Icon(Icons.history_outlined),
//                       title: Text('Riwayat Pendanaan'),
//                       onTap: () {
//                         Navigator.of(context).pushNamed('/transaksi_terakhir');
//                       },
//                     ),
//                     ListTile(
//                       leading: Icon(Icons.help_outline_outlined),
//                       title: Text('Pusat Bantuan'),
//                       onTap: () {
//                         Navigator.of(context).pushNamed('/pusat_bantuan');
//                       },
//                     ),
//                     ListTile(
//                       title: Align(
//                         alignment: Alignment.center,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             Navigator.of(context).pushNamed('/login_sebagai');
//                           },
//                           style: ElevatedButton.styleFrom(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(16),
//                             ),
//                             backgroundColor: Color.fromARGB(255, 78, 119, 78),
//                             minimumSize: Size(48, 48),
//                           ),
//                           child: Text('Logout'),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           );
//         },
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         selectedItemColor: Color(0xFF1C4B1C),
//         onTap: onTabTapped,
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: GestureDetector(
//               onTap: () {
//                 Navigator.pushReplacementNamed(context, '/homepage');
//               },
//               child: Icon(Icons.home, color: Colors.grey),
//             ),
//             label: 'Home',
//             activeIcon: Icon(Icons.home, color: Color(0xFF1C4B1C)),
//           ),
//           BottomNavigationBarItem(
//             icon: GestureDetector(
//               onTap: () {
//                 Navigator.pushReplacementNamed(context, '/report');
//               },
//               child: Icon(Icons.report, color: Colors.grey),
//             ),
//             label: "Report",
//             activeIcon: Icon(Icons.report, color: Color(0xFF1C4B1C)),
//           ),
//           BottomNavigationBarItem(
//             icon: GestureDetector(
//               onTap: () {
//                 Navigator.pushReplacementNamed(context, '/profile');
//               },
//               child: Icon(Icons.account_circle, color: Colors.grey),
//             ),
//             label: "Profile",
//             activeIcon: Icon(Icons.account_circle, color: Color(0xFF1C4B1C)),
//           ),
//         ],
//       ),
//     );
//   }
// }
