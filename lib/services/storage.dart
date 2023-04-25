import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;

class Storage {
  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  Future<void> uploadfile(
      String filePath,
      String fileName,
      ) async {
        File file = File(filePath);

        try {
          await storage.ref('test/$fileName').putFile(file);
        // ignore: empty_catches
        } on firebase_core.FirebaseException {
        }
  }

  Future<firebase_storage.ListResult> listFiles() async {
    firebase_storage.ListResult results = await storage.ref('test').listAll();

    // ignore: unused_local_variable
    for (var ref in results.items) {
    }
    return results;
  }

  Future<String> downloadURl(String imageName) async {
    String downloadURL = await storage.ref('test/$imageName').getDownloadURL();

    return downloadURL;
  }
 }