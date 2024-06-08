import 'package:flutter/material.dart';
import 'package:jember_siaga/views/pewenang/homepage.dart';
import 'package:jember_siaga/views/pewenang/profile/profil_pewenang.dart';

class Navbarpewenang extends StatefulWidget {
  final int initialIndex;
  const Navbarpewenang({super.key, required this.initialIndex});

  @override
  State<Navbarpewenang> createState() => _NavbarpewenangState();
}

class _NavbarpewenangState extends State<Navbarpewenang> {
  late int currentPageIndex;

  @override
  void initState() {
    super.initState();
    currentPageIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPageIndex,
        children: const <Widget>[
          HomePagePewenangView(),
          ProfilpewenangView(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(17, 35, 90, 1),
        currentIndex: currentPageIndex,
        selectedItemColor: Colors.white,
        unselectedLabelStyle: const TextStyle(
          fontFamily: 'Poppins',
          color: Colors.black,
        ),
        selectedLabelStyle: const TextStyle(
          fontFamily: 'Poppins',
          color: Colors.white,
        ),
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              size: 30,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
            ),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
