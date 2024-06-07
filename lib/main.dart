import 'package:flutter/material.dart';
import 'package:jember_siaga/views/auth/sign_in.dart';

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
      home: const SignInView(),
    );
  }
}