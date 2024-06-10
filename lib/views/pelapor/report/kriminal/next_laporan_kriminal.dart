import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:jember_siaga/utils/colors.dart';
import 'package:jember_siaga/widgets/custom_textfield.dart';
import 'package:jember_siaga/provider/kriminal_provider.dart';

class NextLaporanKriminalView extends StatefulWidget {
  final String namaPelapor;
  final String alamatPelapor;
  final String teleponPelapor;
  final String jenisKejahatan;

  const NextLaporanKriminalView({
    Key? key,
    required this.namaPelapor,
    required this.alamatPelapor,
    required this.teleponPelapor,
    required this.jenisKejahatan,
  }) : super(key: key);

  @override
  State<NextLaporanKriminalView> createState() =>
      _NextLaporanKriminalViewState();
}

class _NextLaporanKriminalViewState extends State<NextLaporanKriminalView> {
  late TextEditingController jenisController;
  late TextEditingController catatanController;
  late TextEditingController fisikController;
  File? imageFile;

  final ImagePicker _picker = ImagePicker();

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

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    } else {
      print("No image selected");
    }
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
              onPressed: _pickImage,
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
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      if (imageFile == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Please select an image."),
                          ),
                        );
                        return;
                      }

                      String? downloadUrl;
                      try {
                        downloadUrl = await Provider.of<KriminalProvider>(
                                context,
                                listen: false)
                            .uploadFile(imageFile!);
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("File upload failed: $e"),
                          ),
                        );
                        return;
                      }

                      if (downloadUrl == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Failed to get the download URL."),
                          ),
                        );
                        return;
                      }

                      Map<String, dynamic> data = {
                        "nama_pelapor": widget.namaPelapor,
                        "alamat_pelapor": widget.alamatPelapor,
                        "telepon_pelapor": widget.teleponPelapor,
                        "jenis_kejahatan": widget.jenisKejahatan,
                        "jenis_kelamin": jenisController.text,
                        "ciri_fisik": fisikController.text,
                        "catatan": catatanController.text,
                        "bukti_url": downloadUrl,
                      };

                      await Provider.of<KriminalProvider>(context,
                              listen: false)
                          .addKriminalData(data);
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
