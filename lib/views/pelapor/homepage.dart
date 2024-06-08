import 'package:flutter/material.dart';
import 'package:jember_siaga/views/pelapor/report/kebakaran/laporan_kebakaran.dart';
import 'package:jember_siaga/views/pelapor/report/kecelakaan/laporan_kecelakaan.dart';
import 'package:jember_siaga/views/pelapor/report/kriminal/laporan_kriminal.dart';

class HomePagePelaporView extends StatelessWidget {
  const HomePagePelaporView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Text(
                    "Halo, Trio Wikwik",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "Laporkan Keadaan Darurat Kamu Hanya dengan 'Jember Siaga'",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      text:
                          "Melaporkan keadaan darurat semudah membalikkan telapak tangan - ",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                      children: [
                        TextSpan(
                          text:
                              "TUNGGU APA LAGI? PAKAI 'JEMBER SIAGA' SEKARANG JUGA!",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LaporanKriminalView(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(31, 78, 200, 1),
                ),
                child: const Column(
                  children: [
                    ImageIcon(
                      AssetImage('assets/images/icon_kriminal.png'),
                      color: Colors.white,
                      size: 50,
                    ),
                    Text(
                      "Laporkan Kejahatan Kriminal",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LaporanKebakaranView(),
                  ),
                );
              },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(212, 0, 0, 1),
              ),
              child: const Column(
                children: [
                  ImageIcon(
                    AssetImage('assets/images/icon_kebakaran.png'),
                    color: Colors.white,
                    size: 50,
                  ),
                  Text(
                    "Laporkan Kebakaran",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LaporanKecelakaanView(),
                  ),
                );
              },
              child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 153, 0, 1),
              ),
              child: const Column(
                children: [
                  ImageIcon(
                    AssetImage('assets/images/icon_kecelakaan.png'),
                    color: Colors.white,
                    size: 50,
                  ),
                  Text(
                    "Laporkan Kecelakaan",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )
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
