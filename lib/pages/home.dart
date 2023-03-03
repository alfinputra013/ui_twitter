import 'package:flutter/material.dart';
import 'package:twitter_ui/pages/mail.dart';
import 'package:twitter_ui/pages/notifications.dart';
import 'package:twitter_ui/pages/search.dart';
import 'package:twitter_ui/pages/tweets.dart';
import 'bottom_bar.dart';
import 'navbar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: SideBar(),
      appBar: AppBar(
        leading: RawMaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => SideBar(),
              ),
            );
          },
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
          'Home',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: ((context, i) => Column(
              children: [
                const Divider(height: 5),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/jisoo.jpg'),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text('Kim Jisoo'),
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
                      Image.asset('assets/images/p.jpg'),
                      const SizedBox(
                        height: 10,
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
