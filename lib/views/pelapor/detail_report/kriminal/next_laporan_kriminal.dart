import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:jember_siaga/utils/colors.dart';
import 'package:jember_siaga/widgets/custom_textfield.dart';

class NextLaporanKriminalView extends StatefulWidget {
  const NextLaporanKriminalView({super.key});

  @override
  State<NextLaporanKriminalView> createState() =>
      _NextLaporanKriminalViewState();
}

class _NextLaporanKriminalViewState extends State<NextLaporanKriminalView> {
  late TextEditingController jenisController;
  late TextEditingController catatanController;
  late TextEditingController fisikController;
  String? imagePath;

  @override
  void initState() {
    jenisController = TextEditingController();
    catatanController = TextEditingController();
    fisikController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    jenisController.dispose();
    catatanController.dispose();
    fisikController.dispose();
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
                "Jenis Kelamin",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 7),
            CustomTextField(
              controller: jenisController,
              hintText: "cth: cwk",
            ),
            const SizedBox(height: 7),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Ciri Fisik",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 7),
            CustomTextField(
              controller: fisikController,
              hintText: "cth: Tinggi Kurus",
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
              hintText: "cth: Pencurian hati di toko belikopii",
            ),
            const SizedBox(height: 7),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Upload Bukti",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 7),
            ElevatedButton(
              onPressed: () async {
                FilePickerResult? result = await FilePicker.platform.pickFiles(
                  type: FileType.custom,
                  allowedExtensions: ['jpg', 'png', 'jpeg'],
                );

                if (result != null) {
                  setState(() {
                    imagePath = result.files.single.path;
                  });
                } else {
                  print("No file selected");
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryButtonColor,
                minimumSize: const Size(300, 48),
              ),
              child: const Text(
                "Pilih File",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
