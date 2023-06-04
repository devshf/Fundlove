import 'package:flutter/material.dart';

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
      home: MenuSearchPage(),
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

class MenuSearchPage extends StatefulWidget {
  @override
  _MenuSearchPageState createState() => _MenuSearchPageState();
}

class _MenuSearchPageState extends State<MenuSearchPage> {
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

  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Search'),
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
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.black),
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
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xFF020202)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Color(0xFF020202)),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report, color: Color(0xFF020202)),
            label: 'Report',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xFF020202),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
