import 'package:flutter/material.dart';

class Akun_Page extends StatefulWidget {
  Akun_Page({Key? key}) : super(key: key);

  @override
  _Akun_PageState createState() => _Akun_PageState();
}

class _Akun_PageState extends State<Akun_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          children: const [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/gambar/gamava.png'),
                radius: 50,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Ana Octavia Wulandari',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70),
            ),
            
          ],
        ),
      )),
    );
  }
}
