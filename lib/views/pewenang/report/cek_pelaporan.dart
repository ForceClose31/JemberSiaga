import 'package:flutter/material.dart';
import 'package:jember_siaga/views/pewenang/shared/report_card.dart';

class CekPelaporanView extends StatefulWidget {
  const CekPelaporanView({super.key});

  @override
  State<CekPelaporanView> createState() => _CekPelaporanViewState();
}

class _CekPelaporanViewState extends State<CekPelaporanView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text(
          'Notifikasi Pelaporan',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ReportCard(
            reportNumber: '01',
            title: 'Pelaporan Kejahatan Kriminal',
            description: 'deskripsi disini',
          ),
          SizedBox(height: 16),
          ReportCard(
            reportNumber: '02',
            title: 'Nama Laporan',
            description: 'deskripsi',
          ),
          SizedBox(height: 16),
          ReportCard(
            reportNumber: '03',
            title: 'Nama Laporan',
            description: 'deskripsi',
          ),
        ],
      ),
    );
  }
}
