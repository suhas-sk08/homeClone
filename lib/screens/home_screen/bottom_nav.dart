import 'package:flutter/material.dart';
import 'package:home_cleaning/screens/booking_screen/booking_page.dart';
import 'package:home_cleaning/screens/home_screen/home_page.dart';
import 'package:home_cleaning/screens/profile_screen/profile.dart';

import '../cart_screen/cart.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushNamed(context, HomeScreen.routeName);
        break;
      case 1:
        Navigator.pushNamed(context, BookingScreen.routeName);
        break;
      case 2:
        Navigator.pushNamed(context, CartScreen.routeName);
        break;

      case 3:
        Navigator.pushNamed(context, ProfileSettingScreen.routeName);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Booking',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: _currentIndex,
      selectedItemColor: Colors.blue,
      onTap: _onItemTapped,
    );
  }
}
