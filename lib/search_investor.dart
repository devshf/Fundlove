import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'homepage_investor.dart';
import 'login_page_investor.dart';
import 'list_umkm.dart';
import 'notification_investor.dart';
import 'topup_investor.dart';
import 'tarik_dana_investor.dart';
import 'detail_topup_investor.dart';
import 'profile_investor.dart';

void main() {
  runApp(MenuSearchApp());
}

class MenuSearchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu Search',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: MenuSearchPageInvestor(),
    );
  }
}

class User {
  String name;
  String username;
  bool isActive;
  String profileImageUrl;

  User(this.name, this.username, this.isActive, this.profileImageUrl);
}

class MenuSearchPageInvestor extends StatefulWidget {
  @override
  _MenuSearchPageState createState() => _MenuSearchPageState();
}

class _MenuSearchPageState extends State<MenuSearchPageInvestor> {
  String _searchText = '';
  List<User> _menuList = [
    User('samara', 'Samara Samira', false,
        'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b'),
    User('samsudin', 'Samsudin A.', false,
        'https://images.unsplash.com/photo-1507081323647-4d250478b919?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=b717a6d0469694bbe6400e6bfe45a1da'),
    User('samtorio', 'Samtorio Ir', false,
        'https://images.unsplash.com/photo-1502980426475-b83966705988?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=ddcb7ec744fc63472f2d9e19362aa387'),
    User('samudra.bina', 'Samudra Rizky Bima', false,
        'https://images.unsplash.com/photo-1541710430735-5fca14c95b00?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ'),
    User('samuel', 'Samuel Zylgwyn', false,
        'https://images.unsplash.com/photo-1516239482977-b550ba7253f2?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ'),
    User('samuella', 'Smuel', false,
        'https://images.unsplash.com/photo-1503467913725-8484b65b0715?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=cf7f82093012c4789841f570933f88e3'),
    User('samuellia_ananda', 'Ananda Samuellia', false,
        'https://images.unsplash.com/photo-1542534759-05f6c34a9e63?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ'),
    User('samveza', 'Samveza Lavender', false,
        'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b'),
  ];

  List<User> _searchResult = [];

  void _searchMenu(String searchText) {
    setState(() {
      _searchResult.clear();
    });
    if (searchText.isEmpty) {
      _searchText = searchText;
      setState(() {});
      return;
    }
    for (User user in _menuList) {
      if (user.name.toLowerCase().contains(searchText.toLowerCase()) ||
          user.username.toLowerCase().contains(searchText.toLowerCase())) {
        _searchResult.add(user);
      }
    }
    setState(() {});
  }

  int _currentIndex = 1;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Search',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  onChanged: (value) {
                    setState(() {
                      _searchText = value;
                    });
                    _searchMenu(value);
                  },
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    labelText: 'Cari',
                    prefixIcon: Icon(Icons.search,
                        color: Color.fromARGB(255, 78, 119, 78)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 78, 119, 78)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 78, 119, 78)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 78, 119, 78)),
                    ),
                    labelStyle: TextStyle(color: Colors.black),
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                  onSubmitted: (value) {
                    _searchMenu(value);
                  },
                ),
                SizedBox(height: 16.0),
                if (_searchText.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Hasil Pencarian:',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: _searchResult.length,
              separatorBuilder: (BuildContext context, int index) =>
                  Divider(height: 0),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        _searchResult[index].profileImageUrl,
                      ),
                    ),
                    title: Row(
                      children: [
                        Expanded(
                          child: Text(_searchResult[index].name),
                        ),
                        if (_searchResult[index].name == 'samara')
                          Text(
                            'Mengikuti',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                      ],
                    ),
                    subtitle: Text(_searchResult[index].username),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Color(0xFF1C4B1C),
        // onTap: onTabTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/homepage_investor');
              },
              child: Icon(Icons.home, color: Colors.grey),
            ),
            label: 'Home',
            activeIcon: Icon(Icons.home, color: Color(0xFF1C4B1C)),
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/search_investor');
              },
              child: Icon(Icons.search, color: Colors.grey),
            ),
            label: "Search",
            activeIcon: Icon(Icons.search, color: Color(0xFF1C4B1C)),
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/report_investor');
              },
              child: Icon(Icons.report, color: Colors.grey),
            ),
            label: "Report",
            activeIcon: Icon(Icons.search, color: Color(0xFF1C4B1C)),
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/profile_investor');
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
