import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jember_siaga/views/auth/sign_in.dart';
import 'package:jember_siaga/views/pelapor/edit_profil_pelapor.dart';
import 'package:jember_siaga/views/pelapor/notifikasi.dart';

class ProfilPelaporView extends StatefulWidget {
  const ProfilPelaporView({super.key});

  @override
  State<ProfilPelaporView> createState() => _ProfilPelaporViewState();
}

class _ProfilPelaporViewState extends State<ProfilPelaporView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profil',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: const Image(
                        image: AssetImage('assets/images/logo.png'),
                        width: 64,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Trio wikwik',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            'triowikwik@mail.unej.ac.id',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(171, 171, 171, 1)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Perbarui Informasi Akun'),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditProfilPelaporView(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Notifikasi'),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NotifikasiPelapor(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInView(),
                      ),
                    );
                  },
                  child: const Text(
                    'Keluar',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
