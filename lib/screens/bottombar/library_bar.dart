import "package:chords_khmer_app/screens/bottombar/library/playlists_button.dart";
import "package:flutter/material.dart";

class LibraryBar extends StatelessWidget {
  const LibraryBar({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          Container(
            padding: EdgeInsets.all(10),
                  child:
                  ElevatedButton(
                  child: Text('Playlists'),
                  onPressed: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => PlaylistsButton()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
                  ),
            ),
          ),
         Container(
            padding: EdgeInsets.all(10),
                  child:
                  ElevatedButton(
                  child: Text('Songs'),
                  onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
                  ),
            ),
          ),
         Container(
            padding: EdgeInsets.all(10),
                  child:
                  ElevatedButton(
                  child: Text('Albums'),
                  onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
                  ),
            ),
          ),
        Container(
            padding: EdgeInsets.all(11),
                  child:
                  ElevatedButton(
                  child: Text('Artists'),
                  onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
