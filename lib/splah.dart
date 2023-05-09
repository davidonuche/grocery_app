import 'package:flutter/material.dart';
import 'package:grocery_app/screens/onboarding.dart';

class Splah extends StatefulWidget {
  const Splah({super.key});

  @override
  State<Splah> createState() => _SplahState();
}

class _SplahState extends State<Splah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 50,
          child: Center(
            child: Image.asset('assets/imgs/logo.png'),
          ),
        ),
      ),
    );
  }
}

_comfirmLogin(context) async {
  Future.delayed(
    Duration(seconds: 10),
    () {
      Navigator.push(
        context,
        MaterialPageRoute(builder:(context) => Onboarding()),
      );
    },
  );
}
