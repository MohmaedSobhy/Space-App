import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:space_app/feature/home/data/model/category_model.dart';

class CategoryHeaderView extends StatelessWidget {
  final CategoryModel model;
  const CategoryHeaderView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: model.title,
      child: Material(
        child: Container(
          height: 360,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(model.imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withAlpha((0.8 * 255).toInt()),
                  Colors.black.withAlpha((0.1 * 255).toInt()),
                ],
              ),
            ),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FadeInUp(
                          duration: const Duration(milliseconds: 1100),
                          child: IconButton(
                            icon: const Icon(Icons.search, color: Colors.white),
                            onPressed: () {},
                          ),
                        ),
                        FadeInUp(
                          duration: const Duration(milliseconds: 1200),
                          child: IconButton(
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
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
                  ],
                ),
                const SizedBox(height: 40),
                FadeInUp(
                  duration: const Duration(milliseconds: 1200),
                  child: Text(
                    model.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
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
