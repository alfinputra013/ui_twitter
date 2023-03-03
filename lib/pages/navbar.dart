import 'package:flutter/material.dart';
import 'package:twitter_ui/pages/register.dart';
import 'package:twitter_ui/pages/settings_appbar.dart';
import 'package:twitter_ui/pages/user_profile.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            otherAccountsPictures: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/jennie.jpg'),
              )
            ],
            accountName: Text(
              'Kim Jisoo',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              '@kimjsoo',
              style: TextStyle(color: Colors.black),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/jisoo.jpg',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(color: Colors.white),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ProfileView(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Topic'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.bookmark_border),
            title: Text('Bookmark'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.list_alt),
            title: Text('List'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_rounded),
            title: Text('Twitter Circle'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => RegisterView(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
