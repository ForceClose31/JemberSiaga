import 'package:flutter/material.dart';
import 'package:jember_siaga/utils/colors.dart';
import 'package:jember_siaga/views/pewenang/report/cek_pelaporan.dart';

class HomePagePewenangView extends StatelessWidget {
  const HomePagePewenangView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Halo, Pemadam Kebakaran 1',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Terima Pelaporan Keadaan Darurat Kamu Hanya dengan ‘Jember Siaga’',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  const Text.rich(
                    TextSpan(
                      text:
                          'Menerima pelaporan keadaan darurat dari masyarakat Kota Jember semudah membalikkan telapak tangan - ',
                      style: TextStyle(fontSize: 14),
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              'TUNGGU APA LAGI? PAKAI ‘JEMBER SIAGA’ SEKARANG JUGA!',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  const Center(
                    child: Image(
                      image: AssetImage('assets/images/logo_hd.png'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CekPelaporanView(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryButtonColor,
                      minimumSize: const Size(271, 53),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text(
                      'Cek Pelaporan',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
