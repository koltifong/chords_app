import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState () => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home_outlined,
            size: 30,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.folder_outlined,
             size: 30,
            ),
            label: 'folder',
          ),
          NavigationDestination(
            icon: Icon(Icons.add_circle_outline,
             size: 30,
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
      appBar: AppBar(
        title: Text('Chords Song Khmer'),
        actions: [
          IconButton(
          icon: Icon(Icons.search),
          onPressed: () => Scaffold.of(context).openDrawer(),
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () => Scaffold.of(context).openDrawer(),
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: <Widget>[
                 Image(image: AssetImage('lib/assets/images/sample_chords.png'),), 
                  Text('Demo',
                
                  ),                
      ],
    ),
    alignment: Alignment.bottomCenter,
  ),
  drawer: Drawer(
  // Add a ListView to the drawer. This ensures the user can scroll
  // through the options in the drawer if there isn't enough vertical
  // space to fit everything.
  child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child:
          Icon(Icons.account_circle_rounded,
          color: Colors.white,
          size: 100,
          ),
      ),
      ListTile(
        leading: Icon(Icons.home_outlined),
        title: const Text('Home'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        leading: Icon(Icons.person_outline),
        title: const Text('Artists'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        leading: Icon(Icons.music_note_outlined),
        title: const Text('Songs'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        leading: Icon(Icons.album_outlined),
        title: const Text('Album'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        leading: Icon(Icons.queue_music_outlined),
        title: const Text('My Playlists'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        leading: Icon(Icons.logout_outlined
        ),
        title: const Text('Logout'
        ),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
    ],
  ),

),
);

}
}