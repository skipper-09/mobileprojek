import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RekomendasiList extends StatelessWidget {
  const RekomendasiList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Childrekomen(
          img: 'assets/gambar/kawah-ijen.jpg',
          judul: 'Kawah Ijen',
        ),
        Childrekomen(
          img: 'assets/gambar/pandawa.jpg',
          judul: 'Pantai Pandawa',
        ),
        Childrekomen(
          img: 'assets/gambar/kawah-ijen.jpg',
          judul: 'Kawah Ijen',
        ),
        Childrekomen(
          img: 'assets/gambar/pandawa.jpg',
          judul: 'Pantai Pandawa',
        ),
        Childrekomen(
          img: 'assets/gambar/kawah-ijen.jpg',
          judul: 'Kawah Ijen',
        ),
      ],
    );
  }
}

class Childrekomen extends StatelessWidget {
  final String img;
  final String judul;

  const Childrekomen({
    Key? key,
    required this.img,
    required this.judul,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.width / 3,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Container(
                color: Colors.black,
                child: Opacity(
                  opacity: 0.8,
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  judul,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                      color: Colors.white),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        '4.5',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
