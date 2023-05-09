import 'package:flutter/material.dart';

import 'verify_phone_num.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Image.asset('assets/imgs/bg.png').color,
      body: Column(
        children: [
          Center(
            heightFactor: 2,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              child: Center(
                child: Image.asset('assets/imgs/logo.png'),
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(child: Text("Get your groceries delivered to your home")),
          SizedBox(height: 20),
          Center(
            child: Text(
                "The best delivery app in town for delivering your daily fresh groceries"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => VerifyPhoneNum()));
            },
            child: Text("Shop Now"),
          ),
        ],
      ),
    );
  }
}
