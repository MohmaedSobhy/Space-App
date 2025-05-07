import 'package:flutter/material.dart';
import 'package:space_app/feature/home/data/model/category_model.dart';
import 'package:space_app/feature/home/presentation/views/category_body_view.dart';
import 'package:space_app/feature/home/presentation/views/category_header_view.dart';

class CategoryDetails extends StatelessWidget {
  final CategoryModel model;
  const CategoryDetails({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CategoryHeaderView(model: model)),
          const CategoryBodyView(),
        ],
      ),
    );
  }
}
