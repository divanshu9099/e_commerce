import 'package:e_commerce_app/pages/welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myJupiter extends StatefulWidget {
  const myJupiter({Key? key}) : super(key: key);

  @override
  State<myJupiter> createState() => _myJupiterState();
}

class _myJupiterState extends State<myJupiter> {
  List images = [
    "assets/jupiter.jpg",
  ];
  get index => null;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/jupiter.jpg",),
          fit: BoxFit.cover,
        ),
      ),
        child: Column(
          children: [
            Text(
              "JUPITER",
              style: TextStyle(color: Colors.white,
                  fontFamily: "Kanit",fontSize: 50),
            ),
            Text(
              "Fifth in line from the Sun, Jupiter is, by far, the largest planet in the solar system – more than twice as massive as all the other planets combined.",
              style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.normal),
            ),
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back,color: Colors.red,),
              ),
            ),
          ],
        )
    );
  }
}
