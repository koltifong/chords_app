import 'package:chords_khmer_app/class/lang.dart';
import 'package:chords_khmer_app/screens/about_us.dart';
import 'package:chords_khmer_app/screens/auth/login.dart';
import 'package:chords_khmer_app/screens/bottombar/library_bar.dart';
import 'package:chords_khmer_app/screens/drawer/my_account.dart';
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
             size: 50,
            ),
            label: 'Add',
          ),
            NavigationDestination(
            icon: Icon(Icons.library_music_outlined,
             size: 30,
            ),
            label: 'Library',
          ),
           NavigationDestination(
            icon: Icon(Icons.account_circle_outlined,
             size: 30,
            ),
            label: 'Profile',
          ),
        ],
      ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // leading: Image.asset('lib/assets/images/playstore.png'),
        title: Text('Chords App',
        style: TextStyle(
          color: Colors.black, 
          fontWeight: FontWeight.w500)),
        // centerTitle: true,
            actions:[
          // Navigate to the Search Screen
            IconButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const SearchPage())),
                icon: const Icon(Icons.search)),
            // Text('Sign in'),
            DropdownButton(
              underline: SizedBox(),
              icon: Icon(Icons.language_outlined),
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
          color: Colors.grey,
        ),
        child: Text('Chords App'),
      ),
       ListTile(
        leading: Icon(Icons.account_circle_outlined),
        title: const Text('My Account'),
        onTap: () {
           Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MyAccount()),
        );
        },
      ),
      ListTile(
        leading: Icon(Icons.people_outlined),
        title: const Text('Sample'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        leading: Icon(Icons.settings_outlined),
        title: const Text('Settings'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        leading: Icon(Icons.info_outline),
        title: const Text('About us'),
        onTap: () {
           Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AboutUs ()),
        );
        },
      ),
      Spacer(),
      Divider(),
      ListTile(
        leading: Icon(Icons.login),
        title: const Text('Login'),
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