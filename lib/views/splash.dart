import 'package:flutter/material.dart';
import 'package:jember_siaga/utils/colors.dart';
import 'package:jember_siaga/views/pelapor/auth/sign_in.dart';
import 'package:jember_siaga/views/pewenang/auth/sign_in.dart';
import 'package:jember_siaga/views/pewenang/auth/sign_up.dart';

class SplahView extends StatefulWidget {
  const SplahView({super.key});

  @override
  State<SplahView> createState() => _SplahViewState();
}

class _SplahViewState extends State<SplahView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Image(
              image: AssetImage("assets/images/splash_hd.png"),
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 52),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignInView()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryButtonColor,
                        fixedSize: const Size(272, 48),
                      ),
                      child: const Text(
                        "Pihak Pelapor",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignInPewenangView()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: secondaryButtonColor,
                        fixedSize: const Size(272, 48),
                      ),
                      child: const Text(
                        "Pihak Pewenang",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
