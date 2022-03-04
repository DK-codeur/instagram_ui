// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/post_item.dart';
import 'package:instagram_ui/widgets/story_item.dart';

import '../widgets/user_story_item.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Instagram",
          style: TextStyle(
            fontFamily: 'Billabong',
            fontSize: 35
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.favorite_border, size: 30,)
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.send_rounded, size: 30,)
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  UserStoryItem(),

                  StoryItem(),
                  StoryItem(),
                  StoryItem(),
                  StoryItem(),
                  StoryItem(),
                ],
              ),
            ),

            PostItem()

          ],
        ),
      ),
    );
  }
}
