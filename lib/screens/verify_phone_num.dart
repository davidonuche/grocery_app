import 'package:flutter/material.dart';
import 'package:grocery_app/screens/home.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

class VerifyPhoneNum extends StatefulWidget {
  const VerifyPhoneNum({super.key});

  @override
  State<VerifyPhoneNum> createState() => _VerifyPhoneNumState();
}

class _VerifyPhoneNumState extends State<VerifyPhoneNum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 30, width: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back, color: Colors.black),
              ),
            ),
          ],
        ),
        Center(
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Center(
              child: Image.asset('assets/imgs/logo.png'),
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Text(
            "Enter your phone number",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Text(
            "We will sent you a verification code",
            style: TextStyle(fontSize: 15),
          ),
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
          child: Text("Continue"),
        ),
        SizedBox(height: 20),
        Center(
          child: Text(
              "By clicking on Continue you are agreeing to our Terms & Conditions"),
        ),
      ],
    ));
  }
}
