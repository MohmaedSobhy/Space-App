import 'package:flutter/material.dart';
import 'package:space_app/feature/home/presentation/views/home_body_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: HomeBodyView());
  }
}
