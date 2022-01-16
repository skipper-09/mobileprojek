import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myprojekpbm/view/akun/akun.dart';
import 'package:myprojekpbm/view/booking.dart/booking.dart';
import 'package:myprojekpbm/view/explore/explore.dart';

import 'component/Rekomendasilist.dart';
import 'component/apbarname.dart';
import 'component/kategori.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  final List<Widget> _children = [
    const Homeku(),
    Explore(),
    BookingPage(),
    Akun_Page(),
  ];

  @override
  Widget build(BuildContext context) {
    const items2 = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home_filled),
        label: "Beranda",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.explore),
        label: "Explore",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.library_books_outlined),
        label: "Booking",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: "Akun",
      ),
    ];
    return Scaffold(
      body: _children[_selectedNavbar],
      bottomNavigationBar: BottomNavigationBar(
        items: items2,
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

class Homeku extends StatefulWidget {
  const Homeku({
    Key? key,
  }) : super(key: key);

  @override
  State<Homeku> createState() => _HomekuState();
}

class _HomekuState extends State<Homeku> {
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppName(),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Color(0xaa215B83),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: const TextField(
                      style: TextStyle(fontSize: 16, color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 15),
                        hintText: "Cari Tempat Liburan",
                        hintStyle:
                            TextStyle(color: Colors.white54, fontSize: 16),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.search,
                          size: 25,
                          color: Colors.white54,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Kategori',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xaa215B83),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Kategori_page(),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Rekomendasi',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xaa215B83),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: RekomendasiList(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
