import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Notif_Page.dart';

class AppName extends StatelessWidget {
  const AppName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // ignore: avoid_unnecessary_containers
        Container(
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/gambar/gamava.png'),
                radius: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selamat Datang',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 14, color: Color(0xaa828282)),
                      ),
                    ),
                    Text(
                      'Ana Octavia Wulandari',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            color: Color(0xaa215B83),
                            fontWeight: FontWeight.bold),
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {
            // ignore: prefer_const_constructors
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const Notif_Page();
            }));
          },
          icon: const Icon(Icons.notifications_active_rounded),
          color: const Color(0xaa215B83),
          iconSize: 30,
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
        )
      ],
    );
  }
}
