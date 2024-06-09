import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class KecelakaanProvider extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  

  Future<void> addKecelakaanData(Map<String, dynamic> kecelakaanData) async {
    try {
      final QuerySnapshot reportSnapshot =
          await _firestore.collection('report').get();

      final String docId = reportSnapshot.docs.first.id;

      await _firestore.collection('report').doc(docId).collection('kecelakaan').add(kecelakaanData);
    } catch (e) {
      print('Error adding kecelakaan data: $e');
    }
  }
}
