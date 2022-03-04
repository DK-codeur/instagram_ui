// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/home_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  MainNavigationScreen({Key? key}) : super(key: key);

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  final _bottomTabs = [
    HomeScreen(),
    Center(child: Text("search", style: TextStyle(color: Colors.white),)),
    Center(child: Text("post", style: TextStyle(color: Colors.white),)),
    Center(child: Text("shop", style: TextStyle(color: Colors.white),)),
    Center(child: Text("profile", style: TextStyle(color: Colors.white),)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _bottomTabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        iconSize: 33,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: ""
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: ""
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_rounded),
            label: ""
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: ""
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: ""
          )
        ]
      ),
    );
  }
}