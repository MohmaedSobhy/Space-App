import 'package:flutter/material.dart';
import 'package:space_app/feature/home/data/model/category_model.dart';
import 'package:space_app/feature/home/presentation/screens/category_details.dart';
import 'package:space_app/feature/home/presentation/screens/home_screen.dart';
import 'package:space_app/feature/welcome/presentation/screens/welcome_screen.dart';
import 'base_route.dart';

abstract class AppRoute {
  static const String splashScreen = "/Splash Screen";
  static const String loginScreen = "/Login Screen";
  static const String homeScreen = "/Main Screen";
  static const String categoryDetails = "/Detaisl Screen";

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const WelcomeScreen();
          },
        );
      case homeScreen:
        return BaseRoute(
          pageBuilder: (_, __, ___) {
            return const HomeScreen();
          },
        );
      case categoryDetails:
        return BaseRoute(
          pageBuilder: (_, __, ___) {
            return CategoryDetails(model: settings.arguments as CategoryModel);
          },
        );
    }
    return null;
  }
}
