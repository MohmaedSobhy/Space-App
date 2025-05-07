import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:space_app/core/routes/app_route.dart';
import 'package:space_app/feature/home/presentation/widgets/best_category_widget.dart';

import '../../data/model/category_model.dart';

class BestCategoryView extends StatelessWidget {
  const BestCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: const Duration(milliseconds: 1800),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: CategoryModel.getBestArticles().length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    AppRoute.categoryDetails,
                    arguments: CategoryModel.getBestArticles()[index],
                  );
                },
                child: BestCategoryWidget(
                  categoryModel: CategoryModel.getBestArticles()[index],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
