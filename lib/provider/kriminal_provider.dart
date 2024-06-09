import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';

class KriminalProvider extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<String?> uploadFile(File file) async {
    try {
      String fileName = DateTime.now().millisecondsSinceEpoch.toString();
      Reference storageRef = _storage.ref().child("uploads/$fileName");
      UploadTask uploadTask = storageRef.putFile(file);

      TaskSnapshot snapshot = await uploadTask;
      String downloadUrl = await snapshot.ref.getDownloadURL();
      return downloadUrl;
    } catch (e) {
      print("Error uploading file: $e");
      return null;
    }
  }

  Future<void> addKriminalData(Map<String, dynamic> kriminalData) async {
    try {
      final QuerySnapshot reportSnapshot =
          await _firestore.collection('report').get();

      final String docId = reportSnapshot.docs.first.id;
      await _firestore.collection('report').doc(docId).collection('kriminal').add(kriminalData);
    } catch (e) {
      print('Error adding kriminal data: $e');
    }
  }
}
