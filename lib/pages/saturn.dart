import 'package:e_commerce_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class mySaturn extends StatefulWidget {
  const mySaturn({Key? key}) : super(key: key);

  @override
  State<mySaturn> createState() => _mySaturnState();
}

class _mySaturnState extends State<mySaturn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/saturn.jpg"),
          fit: BoxFit.cover,
        ),
      ),
        child: Column(
          children: [
            Text(
              "SATURN",
              style: TextStyle(color: Colors.white,
                  fontFamily: "Kanit",fontSize: 50),
            ),
            Text(
              "Adorned with thousands of beautiful ringlets, Saturn is unique among the planets. It is not the only planet to have rings – made of chunks of ice and rock – but none are as spectacular or as complicated as Saturn's.",
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
