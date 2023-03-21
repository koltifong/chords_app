import "package:flutter/material.dart";

class PlaylistsBar extends StatelessWidget {
  const PlaylistsBar({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView (
          child: Column(
            children: <Widget>[

              Image.asset('lib/assets/images/metallica.jpg'),
              Container(
                alignment: Alignment.centerLeft,
                height: 50,
                color: Colors.transparent,
                child: Container(
                  child: Text('Metallica',
                  style: TextStyle(fontSize: 24),
                  ),
                ),
              ),  
              Text('Metallica is an American heavy metal band. The band was formed in 1981 in Los Angeles by vocalist and guitarist James Hetfield and drummer Lars Ulrich and has been based in San Francisco for most of its career. The bands fast tempos instrumentals and aggressive musicianship made them one of the founding big four bands of thrash metal alongside Megadeth Anthrax and Slayer. Metallica current lineup comprises  Metallica is an American heavy metal band. The band was formed in 1981 in Los Angeles by vocalist and guitarist James Hetfield and drummer Lars Ulrich and has been based in San Francisco for most of its career. The bands fast tempos instrumentals and aggressive musicianship made them one of the founding big four bands of thrash metal alongside Megadeth Anthrax and Slayer. Metallica current lineup comprises founding members and primary songwriters Hetfield and Ulrich longtime lead guitarist Kirk Hammet and bassist Robert Trujillo. Guitarist Dave Mustaine who formed Megadeth after being fired from the band and bassists Ron McGovney Cliff Burton and Jason Newsted are former members of the band.founding members and primary songwriters Hetfield and Ulrich longtime lead guitarist Kirk Hammet and bassist Robert Trujillo. Guitarist Dave Mustaine who formed Megadeth after being fired from the band and bassists Ron McGovney Cliff Burton and Jason Newsted are former members of the band.',
              ),
            ],
      ),
    ),
    );
  }
}