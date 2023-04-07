import 'package:chords_khmer_app/class/lang.dart';
import 'package:chords_khmer_app/screens/drawer/about_us.dart';
import 'package:chords_khmer_app/screens/appbar/notifications_screen.dart';
import 'package:chords_khmer_app/screens/bottombar/library_bar.dart';
import 'package:chords_khmer_app/screens/drawer/my_account.dart';
import 'package:chords_khmer_app/screens/drawer/settings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:chords_khmer_app/screens/auth/auth.dart';
import 'package:flutter/material.dart';

import 'package:chords_khmer_app/screens/appbar/search_screen.dart';
import 'package:chords_khmer_app/screens/bottombar/explore_bar.dart';
import 'package:chords_khmer_app/screens/bottombar/home_bar.dart';
import 'package:chords_khmer_app/screens/bottombar/add_bar.dart';
import 'package:chords_khmer_app/screens/bottombar/profile_bar.dart';

class Home_screen extends StatefulWidget {
  @override
  _HomeState createState () => _HomeState();

}

final User? user = Auth().currentUser;

Future<void> signOut() async {
  await Auth().signOut();
}

Widget _userUid() {
  return Text(user?.email ?? 'User email');
}

Widget _signOutButton() {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: Colors.red,
    ),
    onPressed: signOut,
    child: const Text('Sign Out'),
  );
}

class _HomeState extends State<Home_screen> {
  int index = 0;
  final screens = [
    HomeBar(),
    ExploreBar(),
    AddBar(),
    LibraryBar(),
    ProfileBar(),
  ];

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: const Text('Chords',
        style: TextStyle(
          fontWeight: FontWeight.w500)),
        // centerTitle: true,
            actions:[
          // Navigate to the Notifications Screen
             IconButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const NotificationScreen())),
                icon: const Icon(Icons.notifications)),
            // Switch Languages
            DropdownButton(
              underline: const SizedBox(),
              icon: const Icon(Icons.language),
              items: getLanguages.map((Language lang) {
              return DropdownMenuItem<String>(value: lang.languageCode,
                child: Text(lang.name),
              );
              }).toList(),
                onChanged: (val) {
              },
            ),
      ],
  ),
      backgroundColor: const Color.fromRGBO(245, 245, 245, 0.9),
      body: Stack(
        children: [
           screens [index],
    //        Positioned(
    //           bottom: 10,
    //           right: 10,
    //           child: FloatingActionButton(
    //           onPressed: () {
    //           Navigator.push(
    //             context,
    //             MaterialPageRoute(builder: (context) => ChatScreen()),
    //             );},
    //           backgroundColor: Colors.white,
    //           child:
    //           Icon(Icons.chat_bubble_outline),
    //           tooltip: 'Chat',
    //   ),
    // ),
  ],
),
    drawer: Drawer(
    child: ListView(
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 200, 198, 198),
        ),
        child:  Text('User'),
      ),
      ListTile(
        leading: Icon(Icons.account_box_outlined),
        title: const Text('គណនី',
        style: TextStyle(fontSize: 16),
        ),
        onTap: () {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MyAccount()),
        );
        },
      ),
      ListTile(
        leading: Icon(Icons.settings_outlined),
        title: const Text('ការកំណត់',
        style: TextStyle(fontSize: 16),
        ),
        onTap: () {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Settings()),
        );
        },
      ),
      ListTile(
        leading: Icon(Icons.info_outline),
        title: const Text('អំពី',
        style: TextStyle(fontSize: 16),
        ),
        onTap: () {
           Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AboutUs ()),
        );
        },
      ),
      Spacer(),
      Divider(color: Colors.brown,),
      // Logout Button
      Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: const Text('Email: '),
            ),
            Container(
              child: _userUid(),
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(12),
        child: _signOutButton(),
      ),
    ],
  ),
),
      //  bottomNavigationBar: NavigationBarTheme(
      //   data: NavigationBarThemeData(
      //     indicatorColor: Colors.blueGrey.shade100,
      //     labelTextStyle: MaterialStateProperty.all(
      //       TextStyle(
      //         fontSize: 14,
      //         fontWeight: FontWeight.w500
      //       ),
      //     ),
      //   ),
      //   child: NavigationBar(
      //     height: 70,
      //     backgroundColor: Colors.transparent,
      //     selectedIndex: index,
      //     onDestinationSelected: (index) =>
      //         setState(() => this.index = index),
      //   destinations: [
      //     NavigationDestination(
      //       icon: Icon(Icons.home_outlined,
      //       size: 30,
      //       ),
      //       label: 'ទំព័រដើម',
      //     ),
      //     NavigationDestination(
      //       icon: Icon(Icons.explore_outlined,
      //        size: 30,
      //       ),
      //       label: 'ស្វែងរក',
      //     ),
      //     NavigationDestination(
      //       icon: Icon(Icons.add_circle_outline,
      //        size: 45,
      //       ),
      //       label: 'បន្ថែម',
      //     ),
      //       NavigationDestination(
      //       icon: Icon(Icons.library_music_outlined,
      //        size: 30,
      //       ),
      //       label: 'ចង្វាក់',
      //     ),
      //      NavigationDestination(
      //       icon: Icon(Icons.widgets_outlined,
      //        size: 30,
      //       ),
      //       label: 'ផ្សេងៗ',
      //     ),
      //   ],
      // ),
      // ),
  );
}
}