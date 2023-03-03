import 'package:flutter/material.dart';
import 'package:twitter_ui/pages/home.dart';

class SettingAppBar extends StatefulWidget {
  const SettingAppBar({super.key});

  @override
  State<SettingAppBar> createState() => _SettingAppBarState();
}

class _SettingAppBarState extends State<SettingAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
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
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pengaturan Jelajahi',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 4,
              ),
              child: Text(
                '@kimjsoo',
                style: TextStyle(color: Colors.grey[400], fontSize: 13),
              ),
            )
          ],
        ),
      ),
      body: ListView(children: [
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Lokasi',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 8),
          child: Text(
            'Tampilkan konten di lokasi ini',
            style: TextStyle(fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 8, right: 10),
          child: Text(
            'Jika ini diaktifkan, anda akan mengetahui apa yang sedang terjadi disekitar adna sekarang',
            style: TextStyle(color: Colors.grey[600], fontSize: 13),
          ),
        ),
        const Divider(),
        const Padding(
          padding: EdgeInsets.only(top: 5, left: 20, bottom: 20),
          child: Text(
            'Personalisasi',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 8),
          child: Text(
            'Tren untuk anda',
            style: TextStyle(fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 8, right: 10),
          child: Text(
            'Anda dapat menyesuaikan tren untuk anda berdasarkan lokasi anda dan siapa yang anda ikuti',
            style: TextStyle(color: Colors.grey[600], fontSize: 13),
          ),
        ),
        const Divider()
      ]),
    );
  }
}
