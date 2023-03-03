import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home_sharp,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.mail_outline,
                ))
          ],
        ),
      ),
    );
  }
}
