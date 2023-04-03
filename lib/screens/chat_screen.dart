import "package:flutter/material.dart";


// Search Page
class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      // backgroundColor: Colors.transparent,
       title: Text('Chat'),
      //  centerTitle: true,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(onPressed: () {}, 
          icon: Icon(Icons.more_vert)),
        ],
      ),
      backgroundColor: Color.fromRGBO(245, 245, 245, 0.9),
      body: SingleChildScrollView(
        child: Container(
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10),
              //   color: Colors.white),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                     child: Text('Chat'),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
                child: Row(
                children: [
                SizedBox(
                width: 66,
                height: 66,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(
                    image: AssetImage('lib/assets/images/profile.png')),
                ),
              ),
                  // Container(
                  //   margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
                  //  child: Column(
                  //   children: [
                  //       Text.rich(
                  //         TextSpan(
                  //           children: [
                  //             TextSpan(text: 'VST Studio',
                  //             style: TextStyle(
                  //             fontWeight: FontWeight.w500, fontSize: 18,),),
                  //             TextSpan(
                  //              text: '\nUpload new Photo.',
                  //              style: TextStyle(fontSize: 14,)
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ]),
        ),
      )
    );
  }
}