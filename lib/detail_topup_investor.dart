import 'package:flutter/material.dart';

void main() {
  runApp(const HalamanDetailTopUp());
}

class HalamanDetailTopUp extends StatelessWidget {
  const HalamanDetailTopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditController = TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Halaman Detail Top Up',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Top Up',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Color.fromARGB(255, 78, 119, 78),
                  width: 2,
                ),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                title: Row(
                  children: [
                    Text(
                      "Jumlah Top Up",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'images/dana.png',
                        width: 55,
                        height: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                subtitle: TextField(
                  controller: textEditController,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 78, 119, 78),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                minimumSize: Size(double.infinity, 48),
              ),
              child: Text('Top Up'),
            ),
          ],
        ),
      ),
    );
  }
}
