import "package:flutter/material.dart";
import "package:chords_khmer_app/screens/appbar/search_screen.dart";

class PlaylistsButton extends StatelessWidget {
  const PlaylistsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Playlists'),
        actions: [
           IconButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const SearchPage())),
                icon: const Icon(Icons.add)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          // padding: const EdgeInsets.all(tDefaultsize),
          child: Column(
            
          ),
        ),
      ),
    );
  }
}