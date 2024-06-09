import 'package:flutter/material.dart';
import 'package:jember_siaga/provider/report_provider.dart';
// import 'package:jember_siaga/views/pelapor/auth/sign_in.dart';
import 'package:jember_siaga/views/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyBG1N9WsUNM85K3Da4pmzC_6DX0cKfR3go',
        appId: '1:1009666332815:android:d1bf28531d94a048bbb8fa',
        messagingSenderId: '1009666332815',
        projectId: 'jembersiaga-95df7',
        storageBucket: 'jembersiaga-95df7.appspot.com'),
  );
  // await initializeDependencies();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ReportProvider(),
      child: const JemberSiaga(),
    ),
  );
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
