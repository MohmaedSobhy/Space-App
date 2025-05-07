import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:space_app/feature/home/presentation/widgets/category_widget.dart'
    show CategoryWidget;

import '../../data/model/category_model.dart';

class AllCategoryView extends StatelessWidget {
  const AllCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: const Duration(milliseconds: 1500),
      child: SizedBox(
        height: 180,
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  "Categories",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text("All"),
              ],
            ),
            Expanded(
              child: SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: CategoryModel.getCategory().length,
                  itemBuilder: (context, index) {
                    return CategoryWidget(
                      model: CategoryModel.getCategory()[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
