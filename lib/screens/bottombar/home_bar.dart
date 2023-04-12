import "package:chords_khmer_app/screens/bottombar/explore_bar.dart";
import "package:chords_khmer_app/services/storage.dart";
import "package:file_picker/file_picker.dart";
import "package:flutter/material.dart";
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;

class HomeBar extends StatelessWidget {
   const HomeBar({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();
    return Scaffold(
    backgroundColor: const Color.fromRGBO(245, 245, 245, 0.9),
     body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // const SizedBox(height: 10,),
                    //     SafeArea(child:
                    // Container(
                    //   padding: EdgeInsets.all(10),
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.start,
                    //         mainAxisSize: MainAxisSize.min,
                    //         children: [
                    //     Container(
                    //       //  height: 100.0,
                    //       //   width: 125.0,
                    //           decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(10),
                    //           color: Colors.white),
                    //           child: Row(
                    //             mainAxisSize: MainAxisSize.min,
                    //
                    //           children: [
                    //           const SizedBox(height: 15),
                    //             SizedBox(
                    //               width: 300,
                    //               height: 75,
                    //               child: ClipRRect(
                    //                 borderRadius: BorderRadius.circular(10),
                    //                 child: Row(
                    //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //                   children: [
                    //                     Column(
                    //                      children: [
                    //                        IconButton(onPressed: () {
                    //                       Navigator.push(
                    //                       context,
                    //                       MaterialPageRoute(builder: (context) => FolderButton()),
                    //                       );
                    //                        },
                    //                       icon: Icon(Icons.folder_open_outlined,
                    //                       size: 33, ),
                    //                       ),
                    //                       Text('Folder'),
                    //                      ],
                    //                     ),
                    //                      Column(
                    //                      children: [
                    //                        IconButton(onPressed: () {
                    //
                    //                        },
                    //                       icon: Icon(Icons.lyrics_outlined,
                    //                       size: 33, ),
                    //                       ),
                    //                       Text('Lyrics'),
                    //                      ],
                    //                     ),
                    //                      Column(
                    //                      children: [
                    //                        IconButton(onPressed: () {
                    //                           showBottomSheet(
                    //                           context: context,
                    //                           backgroundColor: Colors.white,
                    //                           shape: RoundedRectangleBorder(
                    //                             borderRadius: BorderRadius.only(
                    //                               topRight: Radius.circular(20),
                    //                               topLeft: Radius.circular(20),
                    //                             ),
                    //                           ),
                    //                         builder: ((context) {
                    //                           return Container(
                    //                             height: 300,
                    //                             child: Column(
                    //                   children: [
                    //                       Stack(
                    //                           children: [
                    //                               Container(
                    //                                   width: double.infinity,
                    //                                   height: 56.0,
                    //                                   child: Center(
                    //                                       child: Text("Folder share",
                    //                                       style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                    //                                       ),
                    //                                       ),
                    //                                   ),
                    //                                     Positioned(
                    //                                         left: 0.0,
                    //                                         top: 0.0,
                    //                                         child: IconButton(
                    //                                             icon: Icon(Icons.close),
                    //                                             onPressed: (){
                    //                                                 Navigator.of(context).pop();
                    //                                             },
                    //                                         ),
                    //                                     ),
                    //                                 ],
                    //                             ),
                    //                             Column(
                    //                               children: [
                    //                                 Container(
                    //                               padding: EdgeInsets.all(15),
                    //                                     child: Row(
                    //                                       children: [
                    //                                        IconButton(
                    //                                             onPressed: (){
                    //                                                 Navigator.of(context).pop();
                    //                                             },
                    //                                                 icon: Icon(Icons.upload_outlined,
                    //                                             size: 33,
                    //                                             ),
                    //                                         ),
                    //                                         Text('Upload a file',
                    //                                         style: TextStyle(fontSize: 18),
                    //                                         ),
                    //                                         // RichText(text: TextSpan(text: "Upload",
                    //                                         // recognizer: TapGestureRecognizer()
                    //                                         // ..onTap = () =>  Navigator.of(context).pop()),
                    //                                         // ),
                    //
                    //                                     ],
                    //                                     ),
                    //                               ),
                    //                                Container(
                    //                               padding: EdgeInsets.all(15),
                    //                                     child: Row(
                    //                                       children: [
                    //                                        IconButton(
                    //                                             onPressed: (){
                    //                                                 Navigator.of(context).pop();
                    //                                             },
                    //                                                 icon: Icon(Icons.drive_folder_upload_outlined,
                    //                                             size: 33,
                    //                                             ),
                    //                                         ),
                    //                                         Text('Upload a folder',
                    //                                         style: TextStyle(fontSize: 18),
                    //                                         ),
                    //                                         // RichText(text: TextSpan(text: "Upload",
                    //                                         // recognizer: TapGestureRecognizer()
                    //                                         // ..onTap = () =>  Navigator.of(context).pop()),
                    //                                         // ),
                    //
                    //                                     ],
                    //                                     ),
                    //                               ),
                    //                               ],
                    //                             ),
                    //                         ],
                    //                     ),
                    //                         );
                    //                         }
                    //                         ),
                    //                         );
                    //                        },
                    //                       icon: Icon(Icons.folder_shared_outlined,
                    //                       size: 33, ),
                    //                       ),
                    //                       Text('Folder share'),
                    //                      ],
                    //                     ),
                    //                 ],
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //         ],
                    //         ),
                    //     ),
                    //     ),

                    //   Container(
                    //   padding: EdgeInsets.only(left: 15.0),
                    //   alignment: Alignment.centerLeft,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.start,
                    //     mainAxisSize: MainAxisSize.min,
                    //     children: [
                    // Container(
                    //   //  height: 100.0,
                    //   //   width: 125.0,
                    //       decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(10),
                    //       color: Colors.white),
                    //       child: Container(
                    //         child: Row(
                    //           children: [
                    //           SizedBox(
                    //           width: 125,
                    //           height: 125,
                    //           child: ClipRRect(
                    //             borderRadius: BorderRadius.circular(10),
                    //             child: Container(
                    //               padding: EdgeInsets.only(left: 15.0, top: 15.0),
                    //               child: Row(
                    //               children: [
                    //                 Container(
                    //                  alignment: Alignment.center,
                    //                   child: Column(
                    //                  children: [
                    //                    IconButton(onPressed: () {
                    //                   //     Navigator.push(
                    //                   // context,
                    //                   // MaterialPageRoute(builder: (context) => FolderButton()),
                    //                   // );
                    //                    },
                    //                   icon: Icon(Icons.library_music_outlined,
                    //                   size: 33, ),
                    //                   ),
                    //                   Wrap(
                    //                    children: [
                    //                     Text('You can click \nhere for more.'),]
                    //                   ),
                    //                  ],
                    //                 ),
                    //                 ),
                    //             ],
                    //             ),
                    //             ),

                    //           ),
                    //         ),


                    //         ],
                    //         ),


                    //     ),
                    //   ),
                    //   Container(

                    //            decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(10),
                    //       color: Colors.white),
                    //          child: SizedBox(
                    //           width: 125,
                    //           height: 125,
                    //           child: ClipRRect(
                    //             borderRadius: BorderRadius.circular(10),
                    //             child: Container(
                    //               padding: EdgeInsets.only(left: 15.0, top: 15.0),
                    //               child: Row(
                    //               children: [
                    //                 Container(
                    //                  alignment: Alignment.center,
                    //                   child: Column(
                    //                  children: [
                    //                    IconButton(onPressed: () {
                    //                   //     Navigator.push(
                    //                   // context,
                    //                   // MaterialPageRoute(builder: (context) => FolderButton()),
                    //                   // );
                    //                    },
                    //                   icon: Icon(Icons.music_note_outlined,
                    //                   size: 33, ),
                    //                   ),
                    //                   Wrap(
                    //                    children: [
                    //                     Text('You view click \nhere for more.'),]
                    //                   ),
                    //                  ],
                    //                 ),
                    //                 ),
                    //             ],
                    //             ),
                    //             ),

                    //           ),
                    //         ),
                    //         ),
                    //         Container(

                    //            decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(10),
                    //       color: Colors.white),
                    //          child: SizedBox(
                    //           width: 125,
                    //           height: 125,
                    //           child: ClipRRect(
                    //             borderRadius: BorderRadius.circular(10),
                    //             child: Container(
                    //               padding: EdgeInsets.only(left: 15.0, top: 15.0),
                    //               child: Row(
                    //               children: [
                    //                 Container(
                    //                  alignment: Alignment.center,
                    //                   child: Column(
                    //                  children: [
                    //                    IconButton(onPressed: () {
                    //                   //     Navigator.push(
                    //                   // context,
                    //                   // MaterialPageRoute(builder: (context) => FolderButton()),
                    //                   // );
                    //                    },
                    //                   icon: Icon(Icons.tune_outlined,
                    //                   size: 33, ),
                    //                   ),
                    //                   Wrap(
                    //                    children: [
                    //                     Text('You can click \nhere for more.'),]
                    //                   ),
                    //                  ],
                    //                 ),
                    //                 ),
                    //             ],
                    //             ),
                    //             ),

                    //           ),
                    //         ),
                    //         ),
                    //     ],
                    //   ),
                    // ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                      child: const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Search...',
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    FutureBuilder(
                        future: storage.listFiles(),
                        builder: (BuildContext context,
                            AsyncSnapshot<firebase_storage.ListResult> snapshot) {
                          if (snapshot.connectionState == ConnectionState.done &&
                              snapshot.hasData) {
                            return Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              height: 50,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: snapshot.data!.items.length,
                                  itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => const DetailScreen()),
                                        );
                                      },
                                      child: Text(snapshot.data!.items[index].name),
                                    ),
                                  );
                                  }
                              ),
                            );
                          }
                          if (snapshot.connectionState == ConnectionState.waiting ||
                              !snapshot.hasData) {
                            return LinearProgressIndicator();
                          }
                          return Container();
                        }
                    ),
                  ],
                ),
              ),
     ),
    );
  }
}