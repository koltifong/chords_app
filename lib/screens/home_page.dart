import 'package:chords_khmer_app/class/lang.dart';
import 'package:chords_khmer_app/screens/drawer/about_us.dart';
import 'package:chords_khmer_app/screens/appbar/notifications_screen.dart';
import 'package:chords_khmer_app/screens/auth/login.dart';
import 'package:chords_khmer_app/screens/bottombar/library_bar.dart';
import 'package:chords_khmer_app/screens/drawer/my_account.dart';
import 'package:chords_khmer_app/screens/drawer/settings.dart';
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
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined,
            size: 30,
            ),
            label: 'ទំព័រដើម',
          ),
          NavigationDestination(
            icon: Icon(Icons.explore_outlined,
             size: 30,
            ),
            label: 'ស្វែងរក',
          ),
          NavigationDestination(
            icon: Icon(Icons.add_circle_outline,
             size: 45,
            ),
            label: 'បន្ថែម',
          ),
            NavigationDestination(
            icon: Icon(Icons.library_music_outlined,
             size: 30,
            ),
            label: 'ចង្វាក់',
          ),
           NavigationDestination(
            icon: Icon(Icons.widgets_outlined,
             size: 30,
            ),
            label: 'ផ្សេងៗ',
          ),
        ],
      ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // leading: Image.asset('lib/assets/images/playstore.png'),
        title: Text('Chords',
        style: TextStyle(
          color: Colors.black, 
          fontWeight: FontWeight.w500)),
        // centerTitle: true,
            actions:[
          // Navigate to the Search Screen

             IconButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const NotificationScreen())),
                icon: const Icon(Icons.notifications_outlined)),

            IconButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const SearchPage())),
                icon: const Icon(Icons.search)),
            // Text('Sign in'),
            DropdownButton(
              underline: SizedBox(),
              icon: Icon(Icons.language),
              items: getLanguages.map((Language lang) {
              return new DropdownMenuItem<String>(
                          value: lang.languageCode,
                          child: new Text(lang.name),
                        );
                      }).toList(),
                onChanged: (val) {
                print(val);
              },
            ),
      ],
      
  ),
      body: screens [index],
      drawer: Drawer(
      child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: 
        Text('Chords'),
      ),
       ListTile(
        leading: Icon(Icons.star_outline_outlined),
        title: const Text('Chords Pro',
        style: TextStyle(fontSize: 16),
        ),
        onTap: () {
          
        },
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
      ListTile(
        leading: Icon(Icons.login),
        title: const Text('ចូលគណនី',
        style: TextStyle(fontSize: 16),
        ),
        onTap: () {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
        },
      ),
    ],
  ),
  
),
  );
}
}