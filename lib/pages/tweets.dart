import 'package:flutter/material.dart';
import 'package:twitter_ui/pages/home.dart';
import 'package:twitter_ui/pages/mail.dart';
import 'package:twitter_ui/pages/notifications.dart';
import 'package:twitter_ui/pages/search.dart';

class CreateTweetScreen extends StatefulWidget {
  const CreateTweetScreen({super.key});

  @override
  State<CreateTweetScreen> createState() => _CreateTweetScreenState();
}

class _CreateTweetScreenState extends State<CreateTweetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (_) => const MyHomePage(),
              ),
            );
          },
          icon: Icon(
            Icons.close,
            size: 30,
            color: Colors.black87,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Container(
              color: Colors.blue,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: const Text(
                'Tweet',
                style: TextStyle(color: Colors.white, fontSize: 13.0),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 10, left: 5)),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/jisoo.jpg'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 250,
                    child: TextFormField(
                      minLines: 1,
                      maxLines: 20,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                          hintText: "Apa yang sedang terjadi?",
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
          ])
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
    );
  }
}
