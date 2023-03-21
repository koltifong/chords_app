import "package:carousel_pro/carousel_pro.dart";
import "package:flutter/material.dart";

class HomeBar extends StatelessWidget {
  const HomeBar({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView(
      // padding: const EdgeInsets.all(8),
      children: [
        Container(
          height: 80,
          color: Colors.transparent,
          child: const Center(
            child: Text('Welcome to Chords App',
            style: TextStyle(fontSize: 24),
            ),
          ),
        ),
    // Text('Whats new?',
    // style: TextStyle(fontSize: 18),
    // ),

        SizedBox(
          height: 230.0,
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
              Image.asset('lib/assets/images/sample_chords.png', fit: BoxFit.cover),
              Image.asset('lib/assets/images/sample_chords.png', fit: BoxFit.cover),
              Image.asset('lib/assets/images/sample_chords.png', fit: BoxFit.cover),
              Image.asset('lib/assets/images/sample_chords.png', fit: BoxFit.cover)
            ]
          ),
        ),
      ],
     ),
    );
  }
}