import 'package:flutter/material.dart';
import 'package:jember_siaga/views/pewenang/auth/sign_in.dart';
import 'package:jember_siaga/widgets/custom_button.dart';
import 'package:jember_siaga/widgets/custom_dialog.dart';
import 'package:jember_siaga/widgets/custom_textfield.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  late TextEditingController namaController;
  late TextEditingController emailController;
  late TextEditingController alamatController;
  late TextEditingController passwordController;

  @override
  void initState() {
    namaController = TextEditingController();
    emailController = TextEditingController();
    alamatController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    namaController.dispose();
    emailController.dispose();
    alamatController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ClipRRect(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 123,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Nama Lengkap",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              CustomTextField(
                controller: namaController,
                hintText: "cth: trio wik wik",
              ),
              const SizedBox(
                height: 7,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Alamat Email",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              CustomTextField(
                controller: emailController,
                hintText: "cth: triowikwik@mail.unej.ac.id",
              ),
              const SizedBox(
                height: 7,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Alamat",
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
                  "Password",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              CustomTextField(
                controller: passwordController,
                hintText: "*************",
                obscureText: true,
                maxLines: 1,
              ),
              const SizedBox(
                height: 7,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Konfirmasi Password",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              CustomTextField(
                controller: passwordController,
                hintText: "*************",
                obscureText: true,
                maxLines: 1,
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                text: "Daftar",
                backgroundColor: const Color.fromRGBO(17, 35, 90, 1),
                onPressed: () {
                  showCustomDialog(
                    context,
                    icon: Icons.check_circle_sharp,
                    title: "Berhasil",
                    message: "Berhasil Membuat Akun",
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInPewenangView(),
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
