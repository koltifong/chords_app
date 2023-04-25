import "package:chords_khmer_app/services/storage.dart";
import "package:file_picker/file_picker.dart";
import "package:flutter/material.dart";

class ExploreBar extends StatelessWidget {
  const ExploreBar({Key? key,}) : super(key: key);

  @override
   Widget build(BuildContext context) {
    final Storage storage = Storage();
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 0.9),
       body: Column(
         children: [
           FutureBuilder(
               future: storage.downloadURl('image.jpg'),
               builder: (BuildContext context,
                   AsyncSnapshot<String> snapshot) {
                 if (snapshot.connectionState == ConnectionState.done &&
                     snapshot.hasData) {
                   return GestureDetector(
                     onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (_) {
                         return const DetailScreen();
                       }));
                     },
                     child: Hero(
                       tag: 'imageHero',
                       child: Image.network(
                         snapshot.data!,
                         fit: BoxFit.cover,
                       ),
                      ),
                     );
                 }
                 if (snapshot.connectionState == ConnectionState.waiting ||
                     !snapshot.hasData) {
                   return const Center(
                     child: CircularProgressIndicator(),
                   );
                 }
                 return Container();
               },
           ),
           ElevatedButton(
             onPressed: () async {
               final results = await FilePicker.platform.pickFiles(
                 allowMultiple: false,
                 type: FileType.custom,
                 allowedExtensions: ['png', 'jpg',],
               );
               if (results == null) {
                 // ignore: use_build_context_synchronously
                 ScaffoldMessenger.of(context).showSnackBar(
                   const SnackBar(
                     content: Text('No file select'),
                   ),
                 );
                 return;
               }

               final path = results.files.single.path!;
               final fileName = results.files.single.name;

               storage
                   .uploadfile(path, fileName)
                   // ignore: avoid_print
                   .then((value) => print('Done'));
             },
             child: const Text('Upload file'),
           ),
         ],
       ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();
    return Scaffold(
      body:
      FutureBuilder(
          future: storage.downloadURl(''),
          builder: (BuildContext context,
              AsyncSnapshot<String> snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.hasData) {
              return  GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Center(
                  child: Hero(
                    tag: 'imageHero',
                    child: Image.network(
                      snapshot.data!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            }
            if (snapshot.connectionState == ConnectionState.waiting ||
                !snapshot.hasData) {
              return const Center(
                  child: CircularProgressIndicator(),
              );
            }
            return Container();
          }
      ),
    );
  }
}



        