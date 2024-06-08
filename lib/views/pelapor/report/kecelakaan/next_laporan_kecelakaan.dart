import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:jember_siaga/utils/colors.dart';
import 'package:jember_siaga/widgets/custom_textfield.dart';

class NextPelaporanKecelakaanView extends StatefulWidget {
  const NextPelaporanKecelakaanView({super.key});

  @override
  State<NextPelaporanKecelakaanView> createState() =>
      _NextPelaporanKecelakaanView();
}

class _NextPelaporanKecelakaanView extends State<NextPelaporanKecelakaanView> {
  late TextEditingController jumlahController;
  late TextEditingController kondisiController;
  late TextEditingController kronologiController;
  late TextEditingController catatanController;

  @override
  void initState() {
    jumlahController = TextEditingController();
    kondisiController = TextEditingController();
    kronologiController = TextEditingController();
    catatanController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    jumlahController.dispose();
    kondisiController.dispose();
    kronologiController.dispose();
    catatanController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pelaporan Kriminal',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Jumlah Korban",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 7),
            CustomTextField(
              controller: jumlahController,
              hintText: "cth: 7 orang",
            ),
            const SizedBox(height: 7),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Kondisi Korban",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 7),
            CustomTextField(
              controller: kondisiController,
              hintText: "cth: Sadar/Tidak Sadar/Meninggal Dunia",
            ),
            const SizedBox(height: 7),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Kronologi",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 7),
            CustomTextField(
              controller: kronologiController,
              hintText: "cth: Sopir Mengantuk",
            ),
            const SizedBox(height: 7),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Catatan Tambahan",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 7),
            CustomTextField(
              controller: catatanController,
              hintText: "cth: Menyebabkan macet panjang",
            ),

            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: secondaryButtonColor,
                        minimumSize: const Size(300, 48),
                      ),
                      child: const Text(
                        "Kirim Laporan",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
