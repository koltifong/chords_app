import 'package:chords_khmer_app/screens/bottombar/playlists_bar.dart';
import 'package:flutter/material.dart';

import 'package:chords_khmer_app/screens/appbar/search_screen.dart';
import 'package:chords_khmer_app/screens/bottombar/folder_bar.dart';
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
    FolderBar(),
    AddBar(),
    PlaylistsBar(),
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
          backgroundColor: Colors.grey,
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
            icon: Icon(Icons.folder_open_outlined,
             size: 30,
            ),
            label: 'Folder',
          ),
          NavigationDestination(
            icon: Icon(Icons.add_circle_outline,
             size: 50,
            ),
            label: 'Add',
          ),
            NavigationDestination(
            icon: Icon(Icons.music_note_outlined,
             size: 30,
            ),
            label: 'Playlists',
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
          IconButton(onPressed: () => {}, icon: Icon(Icons.language)),
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
          // Update the state of the app.
          // ...
        },
      ),
    ],
  ),
)
  );
}
}