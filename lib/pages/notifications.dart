import 'package:flutter/material.dart';
import 'package:twitter_ui/pages/home.dart';
import 'package:twitter_ui/pages/mail.dart';
import 'package:twitter_ui/pages/search.dart';
import 'package:twitter_ui/pages/settings_appbar.dart';
import 'package:twitter_ui/pages/tweets.dart';

class NotifPage extends StatelessWidget {
  const NotifPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: SideBar(),
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
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/jisoo.jpg'),
          ),
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Notifications',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: 11,
        itemBuilder: ((context, i) => Column(
              children: [
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/jisoo.jpg'),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text('Kim Jisoo'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          '@kimjsoo',
                          style: TextStyle(
                              fontSize: 13,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey),
                        ),
                      ),
                      const Text(
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
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Tes coba membuat Clone UI Twitter. Tes coba membuat Clone UI Twitter.',
                        style: TextStyle(color: Colors.black),
                        overflow: TextOverflow.clip,
                        maxLines: 3,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.chat_bubble_outline,
                                color: Colors.grey,
                                size: 20,
                              ),
                              Text(
                                '713',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.repeat,
                                color: Colors.grey,
                                size: 20,
                              ),
                              Text(
                                '713',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 20,
                              ),
                              Text(
                                '713',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.share,
                                color: Colors.grey,
                                size: 20,
                              ),
                              Text(
                                '713',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ],
            )),
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
