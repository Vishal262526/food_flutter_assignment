import 'package:flutter/material.dart';
import 'package:food/core/routes/route_name.dart';
import 'package:food/core/routes/routes.dart';
import 'package:food/core/theme/app_theme.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      getPages: Routes.screens,
      initialRoute: RouteName.home,
    );
  }
}
