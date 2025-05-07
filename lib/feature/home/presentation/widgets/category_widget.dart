import 'package:flutter/material.dart';
import 'package:space_app/feature/home/data/model/category_model.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryModel model;
  const CategoryWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 2.2,
      child: Hero(
        tag: model.id,
        child: GestureDetector(
          onTap: () {},
          child: Material(
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(model.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withAlpha((.8 * 255).toInt()),
                      Colors.black.withAlpha((.0 * 255).toInt()),
                    ],
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    model.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
