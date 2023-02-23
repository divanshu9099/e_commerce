import 'package:e_commerce_app/pages/welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myMars extends StatefulWidget {
  const myMars({Key? key}) : super(key: key);

  @override
  State<myMars> createState() => _myMarsState();
}

class _myMarsState extends State<myMars> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/mars.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Text(
            "MARS",
            style: TextStyle(color: Colors.white,
                fontFamily: "Kanit",fontSize: 50),
          ),
          Text(
            "Mars is one of the most explored bodies in our solar system, and it's the only planet where we've sent rovers to roam the alien landscape.",
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
