import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool check1 = false, check2 = false, check3 = false, check4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 17,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage('assets/imgs/profile.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text("Good Morning,"),
                      Text(
                        "Sahil",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(Icons.location_on),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
