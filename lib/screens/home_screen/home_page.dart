import 'package:flutter/material.dart';
import 'package:home_cleaning/screens/home_screen/bottom_nav.dart';
import 'package:home_cleaning/screens/home_screen/home_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.location_on, color: Colors.blue),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Current location',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            Text(
              'Mesa, New Jersey-45463',
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: HomePageContent(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
