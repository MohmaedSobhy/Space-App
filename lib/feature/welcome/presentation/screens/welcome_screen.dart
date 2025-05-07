import 'package:flutter/material.dart';
import 'package:space_app/feature/welcome/presentation/views/welcome_body_view.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: const DecorationImage(
            image: const AssetImage("assets/astro_not.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withAlpha((0.9 * 255).toInt()),
                Colors.black.withAlpha((0.2 * 255).toInt()),
              ],
            ),
          ),
          child: const WelcomeBodyView(),
        ),
      ),
    );
  }
}
