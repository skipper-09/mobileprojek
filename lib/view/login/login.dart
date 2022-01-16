import 'package:flutter/material.dart';
import 'package:myprojekpbm/view/homepage/homepage.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const MyHomePage();
              }));
            },
            child: Text('Login')),
      )),
    );
  }
}
