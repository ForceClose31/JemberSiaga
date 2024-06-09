import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ReportProvider extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addReportKebakaran({
    required String nama,
    required String alamat,
    required String telepon,
    required String jenis,
    required String tinggiluas,
    required String akses,
  }) async {
    try {
      final QuerySnapshot reportSnapshot =
          await _firestore.collection('report').get();

      final String docId = reportSnapshot.docs.first.id;

      await _firestore
          .collection('report')
          .doc(docId)
          .collection('kebakaran')
          .add({
        'nama': nama,
        'alamat': alamat,
        'telepon': telepon,
        'jenis': jenis,
        'tinggiluas': tinggiluas,
        'akses': akses,
      });

      notifyListeners();
    } catch (error) {
      print('Error adding report: $error');
    }
  }
}
