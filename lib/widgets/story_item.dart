// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20,bottom: 10),
      child: Column(
      children: <Widget>[
        Container(
          width: 68,
          height: 68,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF9B2282),
                Color(0xFFEEA863)
              ]
            )
          ),

          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2
                ),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/mypic.jpeg"),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
        ),

        SizedBox(height: 8,),

        SizedBox(
          width: 70,
          child: Text(
            "Dorgeles Koble",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white
            ),
          ),
        )
      ],
    ),
    );
  }
}