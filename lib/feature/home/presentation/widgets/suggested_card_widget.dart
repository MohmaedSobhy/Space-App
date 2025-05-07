import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:space_app/feature/home/data/model/category_model.dart';

class SuggestedCardWidget extends StatelessWidget {
  final CategoryModel model;
  const SuggestedCardWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 10, start: 10, end: 10),
      child: Container(
        height: 200,
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 20),
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
                Colors.black.withAlpha((0.8 * 255).toInt()),
                Colors.black.withAlpha((0.1 * 255).toInt()),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FadeInUp(
                duration: const Duration(milliseconds: 1400),
                child: const Align(
                  alignment: Alignment.topRight,
                  child: const Icon(Icons.favorite_border, color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeInUp(
                        duration: const Duration(milliseconds: 1500),
                        child: Text(
                          model.title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  FadeInUp(
                    duration: const Duration(milliseconds: 2000),
                    child: Container(
                      width: 40,
                      height: 40,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add_shopping_cart,
                          size: 18,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
