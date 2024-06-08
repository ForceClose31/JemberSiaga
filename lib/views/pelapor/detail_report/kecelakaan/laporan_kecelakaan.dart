import 'package:flutter/material.dart';
import 'package:jember_siaga/utils/colors.dart';
import 'package:jember_siaga/views/pelapor/report/kecelakaan/next_laporan_kecelakaan.dart';
import 'package:jember_siaga/widgets/custom_textfield.dart';

class LaporanKecelakaanView extends StatefulWidget {
  const LaporanKecelakaanView({Key? key}) : super(key: key);

  @override
  State<LaporanKecelakaanView> createState() => _LaporanKecelakaanViewState();
}

class _LaporanKecelakaanViewState extends State<LaporanKecelakaanView> {
  late TextEditingController namaController;
  late TextEditingController alamatController;
  late TextEditingController teleponController;
  late TextEditingController lokasiController;
  late TextEditingController jeniskecelakaanController;
  late TextEditingController jeniskendaraanController;
  late TextEditingController jumlahController;

  @override
  void initState() {
    super.initState();
    namaController = TextEditingController();
    alamatController = TextEditingController();
    teleponController = TextEditingController();
    lokasiController = TextEditingController();
    jeniskecelakaanController = TextEditingController();
    jeniskendaraanController = TextEditingController();
    jumlahController = TextEditingController();
  }

  @override
  void dispose() {
    namaController.dispose();
    alamatController.dispose();
    teleponController.dispose();
    lokasiController.dispose();
    jeniskecelakaanController.dispose();
    jeniskendaraanController.dispose();
    jumlahController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pelaporan Kecelakaan',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
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
                  "Nomor Telepon",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              CustomTextField(
                controller: teleponController,
                hintText: "cth: 0821888333",
              ),
              const SizedBox(
                height: 7,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Lokasi Kejadian",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              CustomTextField(
                controller: lokasiController,
                hintText: "cth: Tol Sumo km.21",
              ),
              const SizedBox(
                height: 7,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Jenis Kecelakaan",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              CustomTextField(
                controller: jeniskecelakaanController,
                hintText: "cth: Tabrakan/Terguling/Jatuh",
              ),
              const SizedBox(
                height: 7,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Jumlah Kendaraan Terlibat",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              CustomTextField(
                controller: jumlahController,
                hintText: "cth: 3",
              ),
              const SizedBox(
                height: 7,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Jenis Kendaraan",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              CustomTextField(
                controller: jeniskendaraanController,
                hintText: "cth: SUV dan Truk Semen",
              ),
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
                                  const NextPelaporanKecelakaanView()),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
