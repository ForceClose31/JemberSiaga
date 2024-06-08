import 'package:flutter/material.dart';

class EditProfilPelaporView extends StatefulWidget {
  const EditProfilPelaporView({super.key});

  @override
  State<EditProfilPelaporView> createState() => _EditProfilPelaporViewState();
}

class _EditProfilPelaporViewState extends State<EditProfilPelaporView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Akun Saya',
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Nama'),
                  Text('wikwik')
                ],
              ),
              const SizedBox(height: 20,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Email'),
                  Text('triowikwik@mail.unej.ac.id')
                ],
              ),
              const SizedBox(height: 20,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Username'),
                  Text('triowikwik123')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
