import 'package:flutter/material.dart';
import 'package:space_app/core/routes/app_route.dart';

class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.splashScreen,
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
