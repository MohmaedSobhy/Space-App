import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:space_app/feature/home/data/model/category_model.dart';
import 'package:space_app/feature/home/presentation/widgets/suggested_card_widget.dart';

class CategoryBodyView extends StatefulWidget {
  const CategoryBodyView({super.key});

  @override
  State<CategoryBodyView> createState() => _CategoryBodyViewState();
}

class _CategoryBodyViewState extends State<CategoryBodyView> {
  int fadeAnimatedDuration = 1500;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: CategoryModel.getSuggested().length,
      itemBuilder: (context, index) {
        return FadeInUp(
          duration: Duration(milliseconds: fadeAnimatedDuration += 50),
          child: SuggestedCardWidget(
            model: CategoryModel.getSuggested()[index],
          ),
        );
      },
    );
  }
}
