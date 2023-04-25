import "package:chords_khmer_app/screens/bottombar/explore_bar.dart";
import "package:chords_khmer_app/services/storage.dart";
// import "package:file_picker/file_picker.dart";
import "package:flutter/material.dart";
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
// import 'package:firebase_core/firebase_core.dart' as firebase_core;

class HomeBar extends StatelessWidget {
    const HomeBar({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();
    return Scaffold(
    backgroundColor: const Color.fromRGBO(245, 245, 245, 0.9),
     body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
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
                            return const LinearProgressIndicator();
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