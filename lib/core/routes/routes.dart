import 'package:flutter/material.dart';
import 'package:food/core/routes/route_name.dart';
import 'package:food/screens/home_screen.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Routes {
  static final screens = [
    GetPage(name: RouteName.home, page: () => const HomeScreen()),
  ];
}
