import 'package:flutter/material.dart';
import 'package:home_cleaning/screens/booking_screen/booking_page.dart';
import 'package:home_cleaning/screens/booking_screen/pendingBooking.dart';
import 'package:home_cleaning/screens/cart_screen/cart.dart';
import 'package:home_cleaning/screens/categories/acrepair.dart';
import 'package:home_cleaning/screens/categories/description.dart';
import 'package:home_cleaning/screens/categories/service_booking.dart';
import 'package:home_cleaning/screens/login_screen/login_screen.dart';
import 'package:home_cleaning/screens/onbording/views/onbording_screnn.dart';
import 'package:home_cleaning/screens/profile_screen/profile.dart';
import 'package:home_cleaning/screens/splash_screen/splash_screen.dart';
import 'package:home_cleaning/screens/home_screen/home_page.dart';

import 'screens/booking_screen/provider_screen.dart';
import 'screens/categories/payment_screen.dart';

Map<String, WidgetBuilder> routes = {
  //all screens will be registered here like manifest in android
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  'HomeScreen': (context) => HomeScreen(),

  BookingScreen.routeName: (context) => BookingScreen(),
  PendingBookingScreen.routeName: (context) => PendingBookingScreen(),
  ProviderScreen.routeName: (context) => ProviderScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  AcRepair.routeName: (context) => AcRepair(),
  ServiceDetailPage.routeName: (context) => ServiceDetailPage(),
  ProfileSettingScreen.routeName: (context) => ProfileSettingScreen(),
  ServiceBookingScreen.routeName: (context) => ServiceBookingScreen(),
  PaymentScreen.routeName: (context) => PaymentScreen(),
  OnBordingScreen.routeName: (context) => OnBordingScreen(),
};
