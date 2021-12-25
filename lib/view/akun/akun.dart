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
        appBar: AppBar(
      title: Text('Akun Page'),
    ));
  }
}
