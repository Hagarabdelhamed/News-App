import 'package:flutter/material.dart';

import '../models/CategoryModel.dart';
import 'CategoryWidget.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryModel> category = const [
    CategoryModel(image: 'assets/business.jpg', text: 'Business'),
    CategoryModel(image: 'assets/general.jpg', text: 'General'),
    CategoryModel(image: 'assets/enter.jpg', text: 'Entertainment'),
    CategoryModel(image: 'assets/sports.jpg', text: 'Sports'),
    CategoryModel(image: 'assets/technology.jpg', text: 'Technology'),
    CategoryModel(image: 'assets/healthoo.jpg', text: 'Health'),
    CategoryModel(image: 'assets/science.jpg', text: 'Science'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) {
            return CategoryWidget(model: category[index]);
          }),
    );
  }
}
