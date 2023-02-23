import 'package:e_commerce_app/pages/jupiter.dart';
import 'package:e_commerce_app/pages/mars.dart';
import 'package:e_commerce_app/pages/saturn.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "assets/1.jpg","2.jpg","3.jpg","4.jpg",
  ];
  List text = [
    "The Universe where we all live",
    "The Stars Don't look bigger, but they do look brighter",
    "We are not alone in this universe",
    "Love is the one thing we're capable of perceiving that transcends dimensions of time and space. Maybe we should trust that, even if we can't understand it",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home))
        ],
      ),
      body: PageView.builder( // for slide the pages
          scrollDirection: Axis.vertical,
          itemCount: images.length, // it gives the actual length of images
          itemBuilder: (_, index){
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/"+ images[index]),
                  fit: BoxFit.cover,
                )
              ),
              child: Container(
                padding: EdgeInsets.only(left: 40, top: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // for align them
                      children: [
                        Text(
                          "Explore the",
                          style: TextStyle(color: Colors.grey[400], fontSize: 50),
                        ),
                         Text(
                          "Universe",
                          style: TextStyle(color: Colors.white, fontSize: 80, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          text[index],
                        ),
                        Text(
                          images[index],
                          style: TextStyle(color: Colors.grey[400], fontSize: 15),

                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => myMars()));
                            },
                            icon: Icon(Icons.arrow_forward,color: Colors.red,),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => mySaturn()));

                          },
                          child: Text(
                           "Back",
                            style: TextStyle(color: Colors.grey[400], fontSize: 15),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => myJupiter()));

                          },
                          child: Text(
                           "Back",
                            style: TextStyle(color: Colors.grey[400], fontSize: 15),

                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => mySaturn()));

                          },
                          child: Text(
                            "Back",
                            style: TextStyle(color: Colors.grey[400], fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    /*Column(
                      children: List.generate(4, (index) {
                        return Container(
                          width: 9,
                          height: 20,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(8),
                           color: Colors.white,
                         ),
                        );
                      }),
                    )*/
                  ],
                ),
              ),
            );
      }),
    );
  }
}
