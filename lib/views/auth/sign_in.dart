import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jember_siaga/views/auth/reset_password.dart';
import 'package:jember_siaga/views/auth/sign_up.dart';
import 'package:jember_siaga/widgets/custom_button.dart';
import 'package:jember_siaga/widgets/custom_dialog.dart';
import 'package:jember_siaga/widgets/custom_textfield.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            ClipRRect(
              child: Image.asset(
                'assets/images/logo.png',
                width: 148,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 30,
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
              hintText: "Masukkan email anda",
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
              hintText: "Masukkan password anda",
              obscureText: true,
              maxLines: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ResetPasswordView(),
                    ),
                  );
                },
                child: const Text(
                  "Lupa Password?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(39, 79, 245, 1),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              text: "Masuk",
              backgroundColor: const Color.fromRGBO(17, 35, 90, 1),
              onPressed: () {
                showCustomDialog(
                  context,
                  icon: Icons.check_circle_sharp,
                  title: "Berhasil",
                  message: "Login Berhasil",
                  onPressed: () {},
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                text: "Belum punya akun? ",
                style: const TextStyle(
                  fontFamily: 'Poppins',
                ),
                children: [
                  TextSpan(
                      text: "Daftar",
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpView(),
                            ),
                          );
                        }),
                  const TextSpan(
                    text: " sekarang juga",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
