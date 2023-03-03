import 'package:flutter/material.dart';
import 'package:twitter_ui/pages/bottom_bar.dart';
import 'package:twitter_ui/pages/home.dart';
import 'package:twitter_ui/pages/mail.dart';
import 'package:twitter_ui/pages/navbar.dart';
import 'package:twitter_ui/pages/notifications.dart';
import 'package:twitter_ui/pages/settings_appbar.dart';
import 'package:twitter_ui/pages/tweets.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: SideBar(),
      appBar: AppBar(
        elevation: 1,
        actions: [
          Padding(padding: EdgeInsets.only(right: 10)),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SettingAppBar(),
                  ),
                );
              },
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              )),
        ],
        leading: RawMaterialButton(
          onPressed: () {},
          elevation: 0,
          fillColor: Colors.white,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/jisoo.jpg'),
          ),
        ),
        backgroundColor: Colors.white,
        title: Container(
          margin: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(35)),
          child: Row(children: [
            SizedBox(width: 1),
            Container(
              width: 150,
              child: TextFormField(
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    hintText: "Search Here", border: InputBorder.none),
              ),
            ),
          ]),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Tren Untuk Anda',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Sedang tren dalam topik Indonesia',
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 8),
            child: Text(
              '#KawalDavid',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 8),
            child: Text(
              '8.890 Tweet',
              style: TextStyle(color: Colors.grey[600], fontSize: 13),
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Sedang tren dalam topik Indonesia',
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 8),
            child: Text(
              '#MbankingBCA',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 8),
            child: Text(
              '7.125 Tweet',
              style: TextStyle(color: Colors.grey[600], fontSize: 13),
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Sedang tren dalam topik Dunia',
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 8),
            child: Text(
              '#ContohKasusIndonesia',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 8),
            child: Text(
              '88.9rb Tweet',
              style: TextStyle(color: Colors.grey[600], fontSize: 13),
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Sedang tren dalam topik Dunia',
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 8),
            child: Text(
              '#ContohKasusDunia',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 8),
            child: Text(
              '88.9rb Tweet',
              style: TextStyle(color: Colors.grey[600], fontSize: 13),
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Sedang tren dalam topik Dunia',
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 8),
            child: Text(
              '#GenshinImpact',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 8),
            child: Text(
              '88.9rb Tweet',
              style: TextStyle(color: Colors.grey[600], fontSize: 13),
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(
              'Tampilkan lebih banyak',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(
              'Untuk Diikuti',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MyHomePage(),
                    ),
                  );
                },
                icon: Icon(Icons.home)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SearchBar(),
                    ),
                  );
                },
                icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => NotifPage(),
                    ),
                  );
                },
                icon: Icon(Icons.notifications)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MailPage(),
                    ),
                  );
                },
                icon: Icon(Icons.mail_outline)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => CreateTweetScreen(),
              ),
            );
          },
          child: Icon(Icons.add)),
    );
  }
}
