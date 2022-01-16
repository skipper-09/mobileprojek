import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:faker/faker.dart';

class Notif_Page extends StatelessWidget {
  const Notif_Page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notifications'), centerTitle: true),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: ListTile(
                    title: Text('Kawah Ijen'),
                    leading: Container(
                        width: 50,
                        height: 50,
                        child: SvgPicture.asset(
                          'assets/icon/gunung.svg',
                          fit: BoxFit.cover,
                        )),
                    subtitle: Text(faker.lorem.sentence()),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
