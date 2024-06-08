import 'package:flutter/material.dart';
import 'package:jember_siaga/utils/colors.dart';
import 'package:jember_siaga/views/pelapor/report/kriminal/next_laporan_kriminal.dart';
import 'package:jember_siaga/widgets/custom_textfield.dart';

class LaporanKriminalView extends StatefulWidget {
  const LaporanKriminalView({super.key});

  @override
  State<LaporanKriminalView> createState() => _LaporanKriminalViewState();
}

class _LaporanKriminalViewState extends State<LaporanKriminalView> {
  late TextEditingController namaController;
  late TextEditingController alamatController;
  late TextEditingController teleponController;
  late TextEditingController jenisController;

  @override
  void initState() {
    namaController = TextEditingController();
    alamatController = TextEditingController();
    teleponController = TextEditingController();
    jenisController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    namaController.dispose();
    alamatController.dispose();
    teleponController.dispose();
    jenisController.dispose();
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
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Nama Pelapor",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            CustomTextField(
              controller: namaController,
              hintText: "cth: trio wikwik",
            ),
            const SizedBox(
              height: 7,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Alamat Pelapor",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            CustomTextField(
              controller: alamatController,
              hintText: "cth: Jember, Jawa Timur",
            ),
            const SizedBox(
              height: 7,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Nomor Telepon",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            CustomTextField(
              controller: teleponController,
              hintText: "cth: 082168684343",
            ),
            const SizedBox(
              height: 7,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Jenis Kejahatan",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            CustomTextField(
              controller: jenisController,
              hintText: "cth: Pencurian Hati",
            ),
            const SizedBox(
              height: 10,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const NextLaporanKriminalView()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryButtonColor,
                        minimumSize: const Size(100, 33),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Text(
                        "Selanjutnya",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
