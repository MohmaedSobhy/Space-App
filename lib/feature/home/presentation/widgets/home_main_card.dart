import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class HomeMainCard extends StatelessWidget {
  const HomeMainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: const Duration(milliseconds: 1000),
      child: SizedBox(
        width: double.infinity,
        height: 300,
        child: Container(
          decoration: const BoxDecoration(
            image: const DecorationImage(
              image: const AssetImage("assets/nasa_space.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withAlpha((0.3 * 255).toInt()),
                  Colors.black.withAlpha((0.2 * 255).toInt()),
                ],
              ),
            ),
            padding: const EdgeInsetsDirectional.only(
              bottom: 10,
              start: 10,
              top: 45,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      FadeInUp(
                        duration: const Duration(milliseconds: 1200),
                        child: IconButton(
                          icon: const Icon(Icons.favorite, color: Colors.white),
                          onPressed: () {},
                        ),
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1300),
                        child: IconButton(
                          icon: const Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                FadeInUp(
                  duration: const Duration(milliseconds: 1500),
                  child: const Text(
                    "Our New Articles about Space",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                FadeInUp(
                  duration: const Duration(milliseconds: 1700),
                  child: const Row(
                    children: <Widget>[
                      const Text(
                        "VIEW MORE",
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
