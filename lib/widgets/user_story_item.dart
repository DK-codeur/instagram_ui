
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class UserStoryItem extends StatelessWidget {
  const UserStoryItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 34,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 32,
                  backgroundImage: NetworkImage("https://pbs.twimg.com/media/Eq6bKrUXYAMr1yG?format=jpg&name=large"),
                ),
              ),

              Positioned(
                bottom: 0,
                right: 0,
                child: Icon(Icons.add_circle_sharp, color: Colors.blue,))

            ],
          ),

          SizedBox(height: 8,),

          SizedBox(
            width: 70,
            child: Text(
              "Dorgeles Koble",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white70
              ),
            ),
          ),
        ],
      ),
    );
  }
}