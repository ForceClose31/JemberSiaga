import 'package:flutter/material.dart';
import 'package:jember_siaga/views/pelapor/auth/sign_in.dart';
import 'package:jember_siaga/views/splash.dart';

void main()
{
  runApp(const JemberSiaga());
}

class JemberSiaga extends StatelessWidget {
  const JemberSiaga({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: const SplahView(),
    );
  }
}