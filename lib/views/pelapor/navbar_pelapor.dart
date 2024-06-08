import 'package:flutter/material.dart';
import 'package:jember_siaga/views/pelapor/homepage.dart';
import 'package:jember_siaga/views/pelapor/profil_pelapor.dart';

class NavbarPelapor extends StatefulWidget {
  final int initialIndex;
  const NavbarPelapor({super.key, required this.initialIndex});

  @override
  State<NavbarPelapor> createState() => _NavbarPelaporState();
}

class _NavbarPelaporState extends State<NavbarPelapor> {
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
          HomePagePelaporView(),
          ProfilPelaporView(),
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
