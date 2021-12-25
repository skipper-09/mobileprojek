import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Kategori_page extends StatefulWidget {
  const Kategori_page({
    Key? key,
  }) : super(key: key);

  @override
  State<Kategori_page> createState() => _Kategori_pageState();
}

final List<String> list_Text = ['Hutan', 'Pantai', 'Hutan'];
final List<String> list_Img = [
  'assets/icon/gunung.svg',
  'assets/icon/pantai.svg',
  'assets/icon/hutan.svg'
];

class _Kategori_pageState extends State<Kategori_page> {
  int _selected = -1;
  @override
  Widget build(BuildContext context) {
    Widget Option(index) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: GestureDetector(
          onTap: () {
            setState(() {
              _selected = index;
            });
          },
          child: Container(
            height: 70,
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
                color:
                    _selected == index ? Color(0xaa215B83) : Colors.transparent,
                border: Border.all(
                    width: 1,
                    color:
                        _selected == index ? Colors.transparent : Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  list_Img[index],
                  width: 50,
                ),
                Text(
                  list_Text[index],
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      color:
                          _selected == index ? Colors.white : Colors.grey[850]),
                )
              ],
            ),
          ),
        ),
      );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Option(0),
          Option(1),
          Option(2),
        ],
      ),
    );
  }
}
