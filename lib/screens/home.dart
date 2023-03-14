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
            actions: [
          // Navigate to the Search Screen
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const SearchPage())),
              icon: const Icon(Icons.search))
        ],
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: <Widget>[
              ListTile(
              leading: Icon(Icons.folder_open_outlined,
              size: 33,
              ),
              title: const Text('Khmer songs', 
              style: TextStyle(fontSize: 18),
              ),
              onTap: () {
            },
          ),
            ListTile(
              leading: Icon(Icons.folder_open_outlined),
              title: const Text('English songs'),
              onTap: () {
              },
            ),
            ListTile(
               leading: Icon(Icons.folder_open_outlined),
               title: const Text('Thai songs'),
               onTap: () {
              },
            ),
            ListTile(
               leading: Icon(Icons.folder_open_outlined),
               title: const Text('Chinese songs'),
               onTap: () {
              },
            ),
             ListTile(
               leading: Icon(Icons.folder_open_outlined),
               title: const Text('Korean songs'),
               onTap: () {
              },
            ),
             ListTile(
               leading: Icon(Icons.folder_open_outlined),
               title: const Text('Germany songs'),
               onTap: () {
              },
            ),
             ListTile(
               leading: Icon(Icons.folder_open_outlined),
               title: const Text('Italy songs'),
               onTap: () {
              },
            ),
             ListTile(
               leading: Icon(Icons.folder_open_outlined,
               size: 33,
               ),
               title: const Text('Lao songs',
               style: TextStyle(fontSize: 18),
               ),
               onTap: () {
              },
            ),
             ListTile(
               leading: Icon(Icons.folder_open_outlined),
               title: const Text('Singapore songs'),
               onTap: () {
              },
            ),
             ListTile(
               leading: Icon(Icons.folder_open_outlined),
               title: const Text('japan songs'),
               onTap: () {
              },
            ),  
      ],
    ),
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

// Search Page
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // The search area here
        title: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    /* Clear the search field */
                  },
                ),
                hintText: 'Search...',
                border: InputBorder.none),
          ),
        ),
      )),
    );
  }
}