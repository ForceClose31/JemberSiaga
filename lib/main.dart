import 'package:flutter/material.dart';

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
    );
  }
}