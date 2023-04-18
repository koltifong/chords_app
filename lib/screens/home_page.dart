import 'package:chords_khmer_app/class/lang.dart';
import 'package:chords_khmer_app/screens/drawer/about_us.dart';
import 'package:chords_khmer_app/screens/appbar/notifications_screen.dart';
import 'package:chords_khmer_app/screens/bottombar/library_bar.dart';
import 'package:chords_khmer_app/screens/drawer/my_account.dart';
import 'package:chords_khmer_app/screens/drawer/settings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:chords_khmer_app/screens/auth/auth.dart';
import 'package:flutter/material.dart';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:chords_khmer_app/screens/bottombar/explore_bar.dart';
import 'package:chords_khmer_app/screens/bottombar/home_bar.dart';
import 'package:chords_khmer_app/screens/bottombar/add_bar.dart';
import 'package:chords_khmer_app/screens/bottombar/profile_bar.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

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
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 200,
          color: Colors.lightBlueAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.account_circle,
              size: 88,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: _userUid(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ListTile(
        leading: Icon(Icons.account_box_outlined),
        title: const Text('Account',
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
          leading: Icon(Icons.account_circle_outlined),
          title: const Text('sample',
            style: TextStyle(fontSize: 16),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyAccount()
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.person_outlined),
          title: const Text('picture',
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
        title: const Text('Settings',
        style: TextStyle(fontSize: 16),
        ),
        onTap: () {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Settings()),
        );
        },
      ),
        const Divider(color: Colors.brown,),
      ListTile(
        leading: const Icon(Icons.info_outline),
        title: const Text('About us',
        style: TextStyle(fontSize: 16),
        ),
        onTap: () {
           Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AboutUs ()),
        );
        },
      ),
      const Spacer(),
      // Logout Button
      Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(12),
        child: _signOutButton(),
      ),
    ],
  ),
),
       bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blueGrey.shade100,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
        child: NavigationBar(
          height: 70,
          backgroundColor: Colors.transparent,
          selectedIndex: index,
          onDestinationSelected: (index) =>
              setState(() => this.index = index),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined,
            size: 30,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.explore_outlined,
             size: 30,
            ),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.add_circle_outline,
             size: 55,
            ),
            label: '',
          ),
            NavigationDestination(
            icon: Icon(Icons.library_music_outlined,
             size: 30,
            ),
            label: 'Melody',
          ),
           NavigationDestination(
            icon: Icon(Icons.widgets_outlined,
             size: 30,
            ),
            label: 'More',
          ),
        ],
      ),
      ),
  );
}
}