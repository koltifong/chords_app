import 'package:flutter/material.dart';

import 'package:chords_khmer_app/screens/search_screen.dart';
import 'package:chords_khmer_app/screens/file_screen.dart';

class Home_screen extends StatefulWidget {
  @override
  _HomeState createState () => _HomeState();
}

class _HomeState extends State<Home_screen> {
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
            icon: Icon(Icons.folder_open_outlined,
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
        centerTitle: true,
            actions:[
          // Navigate to the Search Screen
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const SearchPage())),
              icon: const Icon(Icons.search)),
          IconButton(onPressed: () => {}, icon: Icon(Icons.notifications_outlined)),
        ],
        
      ),
      body: SingleChildScrollView (
          // child: Column(
    //         children: <Widget>[
    //           ListTile(
    //           leading: Icon(Icons.folder_open_outlined,
    //           size: 33,
    //           ),
    //           title: const Text('Khmer songs', 
    //           style: TextStyle(fontSize: 18),
    //           ),
    //           onTap: () {
    //             Navigator.push(
    //           context,
    //           MaterialPageRoute(
    //               builder: (context) =>  const KhmerSong(),
    //               ),
    //         );
    //         },
    //       ),
    //         ListTile(
    //           leading: Icon(Icons.folder_open_outlined),
    //           title: const Text('English songs'),
    //           onTap: () {
               
    //           },
    //         ),
    //         ListTile(
    //            leading: Icon(Icons.folder_open_outlined),
    //            title: const Text('Thai songs'),
    //            onTap: () {
    //           },
    //         ),
    //         ListTile(
    //            leading: Icon(Icons.folder_open_outlined),
    //            title: const Text('Chinese songs'),
    //            onTap: () {
    //           },
    //         ),
    //          ListTile(
    //            leading: Icon(Icons.folder_open_outlined),
    //            title: const Text('Korean songs'),
    //            onTap: () {
    //           },
    //         ),
    //          ListTile(
    //            leading: Icon(Icons.folder_open_outlined),
    //            title: const Text('Germany songs'),
    //            onTap: () {
    //           },
    //         ),
    //          ListTile(
    //            leading: Icon(Icons.folder_open_outlined),
    //            title: const Text('Italy songs'),
    //            onTap: () {
    //           },
    //         ),
    //          ListTile(
    //            leading: Icon(Icons.folder_open_outlined,
    //            size: 33,
    //            ),
    //            title: const Text('Lao songs',
    //            style: TextStyle(fontSize: 18),
    //            ),
    //            onTap: () {
    //           },
    //         ),
    //          ListTile(
    //            leading: Icon(Icons.folder_open_outlined),
    //            title: const Text('Singapore songs'),
    //            onTap: () {
    //           },
    //         ),
    //          ListTile(
    //            leading: Icon(Icons.folder_open_outlined),
    //            title: const Text('japan songs'),
    //            onTap: () {
    //           },
    //         ),  
    //         ListTile(
    //            leading: Icon(Icons.folder_open_outlined),
    //            title: const Text('japan songs'),
    //            onTap: () {
    //           },
    //         ),  
    //         ListTile(
    //            leading: Icon(Icons.folder_open_outlined),
    //            title: const Text('japan songs'),
    //            onTap: () {
    //           },
    //         ),  
    //         ListTile(
    //            leading: Icon(Icons.folder_open_outlined),
    //            title: const Text('japan songs'),
    //            onTap: () {
    //           },
    //         ),  
    //         ListTile(
    //            leading: Icon(Icons.folder_open_outlined),
    //            title: const Text('japan songs'),
    //            onTap: () {
    //           },
    //         ),  
    //         ListTile(
    //            leading: Icon(Icons.folder_open_outlined),
    //            title: const Text('japan songs'),
    //            onTap: () {
    //           },
    //         ),  
    //         ListTile(
    //            leading: Icon(Icons.folder_open_outlined),
    //            title: const Text('japan songs'),
    //            onTap: () {
    //           },
    //         ),  
    //         ListTile(
    //            leading: Icon(Icons.folder_open_outlined),
    //            title: const Text('japan songs'),
    //            onTap: () {
    //           },
    //         ),  
    //   ],
    // ),
  ),


  //bottombar

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
          color: Colors.grey,
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
      Spacer(), // <-- This will fill up any free-space
      // Everything from here down is bottom aligned in the drawer
      Divider(),
        ListTile(
        title: Text('Settings'),
        leading: Icon(Icons.settings_outlined),
      ),
        ListTile(
        title: Text('About us'),
        leading: Icon(Icons.info_outline),
      ),
      Spacer(), // <-- This will fill up any free-space
      // Everything from here down is bottom aligned in the drawer
      Divider(),
        DropdownButton<String>(
        items: <String>['Khmer', 'English'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
    );
  }).toList(),
  onChanged: (_) {},
)
    ],
  ),
),
);
}
}