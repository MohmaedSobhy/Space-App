import 'package:flutter/material.dart';
import 'package:space_app/feature/home/presentation/views/all_category_view.dart';
import 'package:space_app/feature/home/presentation/views/best_category_view.dart';
import 'package:space_app/feature/home/presentation/widgets/home_main_card.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: const HomeMainCard()),
        const SliverToBoxAdapter(child: const SizedBox(height: 12)),
        const SliverToBoxAdapter(
          child: const Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 5),
            child: const AllCategoryView(),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 45)),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Best Articles",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("All"),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(child: BestCategoryView()),
      ],
    );
  }
}
