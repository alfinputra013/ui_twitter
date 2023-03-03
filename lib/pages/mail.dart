import 'package:flutter/material.dart';
import 'package:twitter_ui/pages/home.dart';
import 'package:twitter_ui/pages/notifications.dart';
import 'package:twitter_ui/pages/search.dart';
import 'package:twitter_ui/pages/settings_appbar.dart';
import 'package:twitter_ui/pages/tweets.dart';

class MailPage extends StatelessWidget {
  const MailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/jisoo.jpg'),
          ),
        ),
        backgroundColor: Colors.white,
        title: Container(
          margin: const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(35)),
          child: Row(children: [
            const SizedBox(width: 1),
            Container(
              width: 150,
              child: TextFormField(
                style: const TextStyle(fontSize: 15),
                decoration: const InputDecoration(
                    hintText: "Cari Direct Message", border: InputBorder.none),
              ),
            ),
          ]),
        ),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/jennie.jpg'),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text('Jennie Kim'),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text(
                    '@kimjsoo',
                    style: TextStyle(
                        fontSize: 13,
                        fontStyle: FontStyle.normal,
                        color: Colors.grey),
                  ),
                ),
                Text(
                  '.a week ago',
                  style: TextStyle(
                      fontSize: 13,
                      fontStyle: FontStyle.normal,
                      color: Colors.grey),
                ),
              ],
            ),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Hallo apa kabar? Udah lama banget ga ketemu nih',
                  style: TextStyle(color: Color.fromARGB(255, 104, 104, 104)),
                  overflow: TextOverflow.clip,
                  maxLines: 3,
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          const Divider(),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/jennie.jpg'),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text('Jennie Kim'),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text(
                    '@j',
                    style: TextStyle(
                        fontSize: 13,
                        fontStyle: FontStyle.normal,
                        color: Colors.grey),
                  ),
                ),
                Text(
                  '.1h ago',
                  style: TextStyle(
                      fontSize: 13,
                      fontStyle: FontStyle.normal,
                      color: Colors.grey),
                ),
              ],
            ),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Hallo apa kabar? Udah lama banget ga ketemu nih',
                  style: TextStyle(color: Color.fromARGB(255, 104, 104, 104)),
                  overflow: TextOverflow.clip,
                  maxLines: 3,
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          )
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
                      builder: (_) => const MyHomePage(),
                    ),
                  );
                },
                icon: const Icon(Icons.home)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SearchBar(),
                    ),
                  );
                },
                icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const NotifPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.notifications)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const MailPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.mail_outline)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const CreateTweetScreen(),
              ),
            );
          },
          child: const Icon(Icons.add)),
    );
  }
}
