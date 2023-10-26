import 'package:flutter/material.dart';

import '../models/CategoryModel.dart';
import 'CategoryWidget.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});  
  final List<CategoryModel> category = const [
    CategoryModel(image: 'assets/Business.jpeg', text: 'Business'),
    CategoryModel(image: 'assets/general.avif', text: 'General'),
    CategoryModel(image: 'assets/entertainment.png', text: 'Entertainment'),
    CategoryModel(image: 'assets/technology.jpeg', text: 'Technology'),
    CategoryModel(image: 'assets/healthh.jpeg', text: 'Health'),
    CategoryModel(image: 'assets/science.avif', text: 'Science'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder:(context,index) {
          return CategoryWidget(model: category[index]);
        }
        ),
    );
  }
}