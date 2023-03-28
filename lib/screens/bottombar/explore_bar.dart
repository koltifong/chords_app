import "package:chords_khmer_app/screens/home_page.dart";
import "package:flutter/material.dart";

class ExploreBar extends StatelessWidget {
  const ExploreBar({key});

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 0.9),
       body: SingleChildScrollView(
        child: Container(
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                    // color: Colors.white,
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
         
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(5),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(height: 20),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: const Image(
                      image: NetworkImage('https://i.pinimg.com/736x/9b/02/47/9b02479d2fe5e5f7192c03be6a9e35e5.jpg')),
                  ),
                ),
                Text(' Post Malone \n Phnom Penh'),
                Align(alignment: Alignment.topRight,
                ),
                new Expanded(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    new Align(
                      alignment: Alignment.topRight,
                      child: new Icon(Icons.more_vert),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ),
            Image.network('https://globalnews.ca/wp-content/uploads/2019/09/saint-tropez-post-malone-2.jpg?quality=85&strip=all'),
            Container(
              // decoration: BoxDecoration(
              // color: Colors.white,
              // borderRadius: BorderRadius.only(
              //       // color: Colors.white,
              //       // topLeft: Radius.circular(10),
              //       // topRight: Radius.circular(10),
              //       bottomLeft: Radius.circular(10),
              //       bottomRight: Radius.circular(10)
              //   ),
              //   // boxShadow: [
              //   //   BoxShadow(
              //   //     color: Colors.white,
              //   //     spreadRadius: 5,
              //   //     blurRadius: 7,
              //   //     offset: Offset(0, 3), // changes position of shadow
              //   //   ),
              //   // ],
              // ),
             
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                IconButton(
                  icon: new Icon(Icons.favorite_outline),
                  onPressed: () {},
                ),
                IconButton(
                  icon: new Icon(Icons.chat_bubble_outline),
                  onPressed: () {},
                ),
                IconButton(
                  icon: new Icon(Icons.share_outlined),
                  onPressed: () {
                    print('Hello');
                  },
                ),
                new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new Align(
                    alignment: Alignment.topRight,
                    child: new IconButton(
              icon: new Icon(Icons.bookmark_outline),
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home_screen()),
              );
              },
            ),
                  ),
                ],
              ),
            ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: 12.0),
              alignment: Alignment.centerLeft,
              child: Column(children: [
                Text('61 likes',
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],),
            ),
            Container(
               padding: EdgeInsets.all(12),
            child: Column(
                children: [
                  Row(
                    children: [
                       Align(
                    alignment: Alignment.centerLeft,
                    child:  Text('Post malone:',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                    
                  ),
                  Text(' He is cool as hell.'),
                  ],
                 ),
                ],
              ),
            ),
             Container(
               padding: EdgeInsets.only(bottom: 40.0, left: 10.0),
            child: Column(
                children: [
                  Row(
                    children: [
                       Align(
                    alignment: Alignment.centerLeft,
                    child:  Text('The weekend:',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                    
                  ),
                  Text(' Good guy'),
                  ],
                 ),
                ],
              ),
            ),
              Container(
              padding: EdgeInsets.all(5),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(height: 20),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: const Image(
                      image: NetworkImage('https://www.thisisrnb.com/wp-content/uploads/2015/06/The-Weeknd-Face.jpg')),
                  ),
                ),
                Text(' The Weekend \n New York'),
                Align(alignment: Alignment.topRight,
                ),
                new Expanded(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    new Align(
                      alignment: Alignment.topRight,
                      child: new Icon(Icons.more_vert),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ),
                      Image.network('https://wallpaperaccess.com/full/2386660.jpg'),
            Container(
              padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 IconButton(
                  icon: new Icon(Icons.favorite_outline),
                  onPressed: () {},
                ),
                IconButton(
                  icon: new Icon(Icons.chat_bubble_outline),
                  onPressed: () {},
                ),
                IconButton(
                  icon: new Icon(Icons.share_outlined),
                  onPressed: () {
                    print('Hello');
                  },
                ),
                new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new Align(
                    alignment: Alignment.topRight,
                    child: new 
                   IconButton(
                      icon: new Icon(Icons.bookmark_outline),
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home_screen()),
                      );
                      },
                    ),
                  ),
                ],
              ),
            ),
                ],
              ),
            ),
                        Container(
              padding: EdgeInsets.only(left: 12.0),
              alignment: Alignment.centerLeft,
              child: Column(children: [
                Text('16 likes',
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],),
            ),
                         Container(
               padding: EdgeInsets.all(12),
            child: Column(
                children: [
                  Row(
                    children: [
                       Align(
                    alignment: Alignment.centerLeft,
                    child:  Text('Juice Wrld:',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                    
                  ),
                  Text(' He is nice.'),
                  ],
                 ),
                ],
              ),
            ),
             Container(
               padding: EdgeInsets.only(bottom: 40.0, left: 10.0),
            child: Column(
                children: [
                  Row(
                    children: [
                       Align(
                    alignment: Alignment.centerLeft,
                    child:  Text('Joji:',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                    
                  ),
                  Text(' Good guy'),
                  ],
                 ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  RichText(text: TextSpan(text: 'hi')),
                ],
              ),
            ),
          ],
        ),
       )
    )
    );
  }
}
        