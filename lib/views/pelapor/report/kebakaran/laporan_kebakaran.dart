import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:jember_siaga/provider/report_provider.dart';
import 'package:jember_siaga/widgets/custom_textfield.dart';

class LaporanKebakaranView extends StatefulWidget {
  const LaporanKebakaranView({Key? key}) : super(key: key);

  @override
  State<LaporanKebakaranView> createState() => _LaporanKebakaranViewState();
}

class _LaporanKebakaranViewState extends State<LaporanKebakaranView> {
  late TextEditingController namaController;
  late TextEditingController alamatController;
  late TextEditingController teleponController;
  late TextEditingController jenisController;
  late TextEditingController tinggiluasController;
  late TextEditingController aksesController;

  @override
  void initState() {
    super.initState();
    namaController = TextEditingController();
    alamatController = TextEditingController();
    teleponController = TextEditingController();
    jenisController = TextEditingController();
    tinggiluasController = TextEditingController();
    aksesController = TextEditingController();
  }

  @override
  void dispose() {
    namaController.dispose();
    alamatController.dispose();
    teleponController.dispose();
    jenisController.dispose();
    tinggiluasController.dispose();
    aksesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pelaporan Kebakaran',
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
                  "Alamat Kejadian",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              CustomTextField(
                controller: alamatController,
                hintText: "cth: Mastrip 3 no.4",
              ),
              const SizedBox(
                height: 7,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Jenis Bangunan",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              CustomTextField(
                controller: jenisController,
                hintText: "cth: Pabrik/Rumah/Kantor",
              ),
              const SizedBox(
                height: 7,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Tinggi dan Luas Bangunan",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              CustomTextField(
                controller: tinggiluasController,
                hintText: "cth: Pabrik/Rumah/Kantor",
              ),
              const SizedBox(
                height: 7,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Akses Menuju Lokasi",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              CustomTextField(
                controller: aksesController,
                hintText: "cth: gang super kecil",
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  final provider = Provider.of<ReportProvider>(context, listen: false);
                  provider.addReportKebakaran(
                    nama: namaController.text,
                    alamat: alamatController.text,
                    telepon: teleponController.text,
                    jenis: jenisController.text,
                    tinggiluas: tinggiluasController.text,
                    akses: aksesController.text,
                  );
                  Navigator.pop(context);
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
