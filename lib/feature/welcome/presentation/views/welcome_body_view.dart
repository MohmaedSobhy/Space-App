import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:space_app/core/routes/app_route.dart';

class WelcomeBodyView extends StatelessWidget {
  const WelcomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInUp(
            duration: const Duration(milliseconds: 1200),
            child: const Text(
              "Discover the Wonders of Space",
              style: const TextStyle(
                color: Colors.white,
                height: 1.2,
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const SizedBox(height: 8),
          FadeInUp(
            duration: const Duration(milliseconds: 1300),
            child: Text(
              "Explore the Universe with Our Space-Themed Collection.",
              style: TextStyle(color: Colors.grey.shade300, fontSize: 22),
            ),
          ),
          const SizedBox(height: 80),
          FadeInUp(
            duration: const Duration(milliseconds: 1500),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.of(
                    context,
                  ).pushReplacementNamed(AppRoute.homeScreen);
                },
                child: const Center(
                  child: const Text(
                    "Explore Now",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          FadeInUp(
            duration: const Duration(milliseconds: 1700),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Center(
                child: const Text(
                  "Create Account",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
