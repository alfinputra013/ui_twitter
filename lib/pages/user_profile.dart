// // import 'package:flutter/material.dart';

// // class UserProfileView extends StatelessWidget {
// //   const UserProfileView({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return NestedScrollView(
// //       headerSliverBuilder: (context, innerBoxIsScrolled) {
// //         return [
// //           SliverAppBar(
// //             expandedHeight: 150,
// //             floating: true,
// //             snap: true,
// //             flexibleSpace: Stack(
// //               children: [
// //                 // Positioned.fill(child: Image.asset('assets/images/jisoo.jpg')
// //                 // ),
// //                 Positioned(
// //                   bottom: 0,
// //                   child: CircleAvatar(
// //                     backgroundImage: AssetImage('assets/images/jisoo.jpg'),
// //                     radius: 45,
// //                   ),
// //                 ),
// //                 Container(
// //                   alignment: Alignment.bottomRight,
// //                   margin: EdgeInsets.all(20),
// //                   child: OutlinedButton(
// //                     onPressed: () {},
// //                     style: ElevatedButton.styleFrom(
// //                         shape: RoundedRectangleBorder(
// //                             borderRadius: BorderRadius.circular(20),
// //                             side: BorderSide(color: Colors.white)),
// //                         padding: EdgeInsets.symmetric(horizontal: 25)),
// //                     child: Text(
// //                       'Edit Profile',
// //                       style: TextStyle(color: Colors.white),
// //                     ),
// //                   ),
// //                 )
// //               ],
// //             ),
// //           ),
// //           SliverPadding(
// //             padding: EdgeInsets.all(8),
// //             sliver: SliverList(
// //               delegate: SliverChildListDelegate([
// //                 Text(
// //                   'Kim Jisoo',
// //                   style: TextStyle(
// //                       fontSize: 17,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.white),
// //                 ),
// //                 Text(
// //                   '@KimJsoo',
// //                   style: TextStyle(fontSize: 15, color: Colors.grey),
// //                 ),
// //                 Text(
// //                   'Lagi gabut',
// //                   style: TextStyle(fontSize: 15, color: Colors.grey),
// //                 ),
// //                 SizedBox(
// //                   height: 10,
// //                 )
// //               ]),
// //             ),
// //           ),
// //         ];
// //       },
// //       body: Container(),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:twitter_ui/pages/tweets.dart';

// class ProfileView extends StatelessWidget {
//   const ProfileView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: DefaultTabController(
//         length: 3,
//         child: NestedScrollView(
//           headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//             return <Widget>[
//               SliverAppBar(
//                 expandedHeight: 200.0,
//                 floating: false,
//                 pinned: true,
//                 flexibleSpace: FlexibleSpaceBar(
//                   centerTitle: true,
//                   title: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       OutlinedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20),
//                                 side: BorderSide(color: Colors.white)),
//                             padding: EdgeInsets.symmetric(horizontal: 25)),
//                         child: Text(
//                           'Edit Profile',
//                           style: TextStyle(color: Colors.white, fontSize: 12),
//                         ),
//                       ),
//                     ],
//                   ),
//                   background: Image(
//                     image: AssetImage('assets/images/jennie.jpg'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               SliverPersistentHeader(
//                 pinned: true,
//                 delegate: _SliverAppBarDelegate(
//                   const TabBar(
//                     labelColor: Colors.black87,
//                     unselectedLabelColor: Colors.grey,
//                     tabs: [
//                       Padding(
//                         padding: EdgeInsets.only(top: 20, bottom: 10),
//                         child: Text('Tweets'),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(top: 20, bottom: 10),
//                         child: Text('Media'),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(top: 20, bottom: 10),
//                         child: Text('Suka'),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ];
//           },
//           body: ListView.builder(
//             itemCount: 3,
//             itemBuilder: ((context, i) => Column(
//                   children: [
//                     ListTile(
//                       leading: const CircleAvatar(
//                         backgroundImage: AssetImage('assets/images/jisoo.jpg'),
//                       ),
//                       title: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           const Padding(
//                             padding: EdgeInsets.only(right: 5),
//                             child: Text('Kim Jisoo'),
//                           ),
//                           const Padding(
//                             padding: EdgeInsets.only(right: 5),
//                             child: Text(
//                               '@kimjsoo',
//                               style: TextStyle(
//                                   fontSize: 13,
//                                   fontStyle: FontStyle.normal,
//                                   color: Colors.grey),
//                             ),
//                           ),
//                           const Text(
//                             '.a week ago',
//                             style: TextStyle(
//                                 fontSize: 13,
//                                 fontStyle: FontStyle.normal,
//                                 color: Colors.grey),
//                           ),
//                         ],
//                       ),
//                       subtitle: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           const Text(
//                             'Tes coba membuat Clone UI Twitter. Tes coba membuat Clone UI Twitter.',
//                             style: TextStyle(color: Colors.black),
//                             overflow: TextOverflow.clip,
//                             maxLines: 3,
//                           ),
//                           const SizedBox(
//                             height: 5,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 children: const [
//                                   Icon(
//                                     Icons.chat_bubble_outline,
//                                     color: Colors.grey,
//                                     size: 20,
//                                   ),
//                                   Text(
//                                     '713',
//                                     style: TextStyle(fontSize: 12),
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 children: const [
//                                   Icon(
//                                     Icons.repeat,
//                                     color: Colors.grey,
//                                     size: 20,
//                                   ),
//                                   Text(
//                                     '713',
//                                     style: TextStyle(fontSize: 12),
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 children: const [
//                                   Icon(
//                                     Icons.favorite,
//                                     color: Colors.red,
//                                     size: 20,
//                                   ),
//                                   Text(
//                                     '713',
//                                     style: TextStyle(fontSize: 12),
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 children: const [
//                                   Icon(
//                                     Icons.share,
//                                     color: Colors.grey,
//                                     size: 20,
//                                   ),
//                                   Text(
//                                     '713',
//                                     style: TextStyle(fontSize: 12),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           Divider(),
//                           const SizedBox(
//                             height: 20,
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 )),
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (_) => CreateTweetScreen(),
//               ),
//             );
//           },
//           child: Icon(Icons.add)),
//     );
//   }
// }

// class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
//   _SliverAppBarDelegate(this._tabBar);

//   final TabBar _tabBar;

//   @override
//   double get minExtent => _tabBar.preferredSize.height;
//   @override
//   double get maxExtent => _tabBar.preferredSize.height;

//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return new Container(
//       child: _tabBar,
//     );
//   }

//   @override
//   bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
//     return false;
//   }
// }

import 'package:flutter/material.dart';
import 'package:twitter_ui/pages/home.dart';
import 'package:twitter_ui/pages/mail.dart';
import 'package:twitter_ui/pages/notifications.dart';
import 'package:twitter_ui/pages/search.dart';
import 'package:twitter_ui/pages/tweets.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          CoverImage(), Profile(),
          //  tabs(size)
        ],
      ),
    );
  }

  Widget CoverImage() {
    return Container(
      height: 150,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/images/jennie.jpg'),
      )),
    );
  }

  Widget Profile() {
    return Container(
      transform: Matrix4.translationValues(0.0, -40.0, 0.0),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 45,
                child: CircleAvatar(
                  radius: 43,
                  backgroundImage: AssetImage('assets/images/jisoo.jpg'),
                ),
              ),
              Text(
                'Edit Profile',
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Kim Jisoo',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '@KimJsoo',
            style: TextStyle(fontSize: 13),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.person,
                size: 15,
                color: Colors.grey[600],
              ),
              Text(
                'Born 12 January 1992',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
              Icon(
                Icons.calendar_month_outlined,
                size: 15,
                color: Colors.grey[600],
              ),
              Text(
                'Joined Februari 2023',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Row(
                children: [
                  Text(
                    '63',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    ' Following',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Row(
                children: [
                  Text(
                    '68M',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    ' Followers',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ],
          ),
          Divider(),

        ],
      ),
    );
  }


Widget Tweets(){
  return Scaffold(
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
  // Widget tabs(Size size) {
  //   return new MaterialApp(
  //     home: new DefaultTabController(
  //         length: 4,
  //         child: new Scaffold(
  //           appBar: new PreferredSize(
  //               child: new Container(
  //                 child: new SafeArea(
  //                     child: Column(
  //                   children: <Widget>[
  //                     new TabBar(
  //                       unselectedLabelColor: Colors.black,
  //                       indicatorColor: Colors.blue,
  //                       labelColor: Colors.blue,
  //                       isScrollable: true,
  //                       tabs: [
  //                         new Text('Tweets'),
  //                         new Text('Tweets & replies'),
  //                         new Text('Media'),
  //                         new Text('Likes')
  //                       ],
  //                     )
  //                   ],
  //                 )),
  //               ),
  //               preferredSize: size * 0.95),
  //           body: new TabBarView(children: <Widget>
  //           [ new Column(
  //             children: <Widget>[
  //               Text('Tweets Page')
  //             ],
  //           ),
  //           new Column(
  //             children: <Widget>[
  //               Text('Tweets & replies page')
  //             ],
  //           ),
  //           new Column(
  //             children: <Widget>[
  //               Text('Media Page')
  //             ],
  //           ),
  //           new Column(
  //             children: <Widget>[
  //               Text('Likes Page')
  //             ],
  //           ),

  //           ],),

  //         )),
  //   );
  // }
}
