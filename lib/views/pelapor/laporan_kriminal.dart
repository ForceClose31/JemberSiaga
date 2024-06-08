import 'package:flutter/material.dart';
import 'package:jember_siaga/widgets/custom_textfield.dart';

class LaporanKriminalView extends StatefulWidget {
  const LaporanKriminalView({super.key});

  @override
  State<LaporanKriminalView> createState() => _LaporanKriminalViewState();
}

class _LaporanKriminalViewState extends State<LaporanKriminalView> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
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
              controller: emailController,
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
              controller: passwordController,
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
              controller: emailController,
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
              controller: passwordController,
              hintText: "cth: Pencurian Hati",
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
