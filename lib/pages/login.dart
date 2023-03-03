import 'package:flutter/material.dart';
import 'package:twitter_ui/pages/home.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Icon(
          Icons.apple,
          color: Colors.blue,
          size: 35,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30, top: 20),
            child: Text(
              'Buat Akun',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 140, left: 30, right: 30, bottom: 15),
            child: TextFormField(
              autofocus: true,
              decoration: new InputDecoration(
                hintText: "Username",
                labelText: "Usernam",
                border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5.0)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 15),
            child: TextFormField(
              keyboardType: TextInputType.number,
              autofocus: true,
              decoration: new InputDecoration(
                hintText: "Telepon atau alamat email",
                labelText: "Telepon",
                border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5.0)),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MyHomePage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.blue)),
                padding:
                    EdgeInsets.only(right: 20, top: 15, bottom: 15, left: 20),
              ),
              child: Text(
                'Buat Akun',
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
