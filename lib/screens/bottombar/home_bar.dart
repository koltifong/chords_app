import "package:carousel_pro/carousel_pro.dart";
import "package:chords_khmer_app/screens/bottombar/library/playlists_button.dart";
import "package:chords_khmer_app/screens/bottombar/library/songs_button.dart";
import "package:flutter/material.dart";

class HomeBar extends StatelessWidget {
  const HomeBar({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView(
      // padding: const EdgeInsets.all(8),
      children: [
        // Container(
        //   height: 60,
        //   color: Colors.transparent,
        //   child: const Center(
        //     child: Text('Welcome to Chords App',
        //     style: TextStyle(fontSize: 24),
        //     ),
        //   ),
        // ),
    // Text('Whats new?',
    // style: TextStyle(fontSize: 18),
    // ),
        SizedBox(
          height: 250.0,
          width: double.maxFinite,
          child: Carousel(
            dotSize: 5.0,
            dotSpacing: 20.0,
            dotColor: Colors.grey,
            dotBgColor: Colors.transparent,
            indicatorBgPadding: 5.0,
            dotPosition: DotPosition.bottomRight,
            autoplayDuration: Duration(seconds: 10),
            // autoplay: false,
              images: [
                Image.asset('lib/assets/images/metallica.jpg', fit: BoxFit.cover),
                Image.asset('lib/assets/images/ac_dc.jpg', fit: BoxFit.cover),
                Image.asset('lib/assets/images/slipknot.jpg', fit: BoxFit.cover)
              ]
            ),
          ),
        ],
      )
    );
  }
}