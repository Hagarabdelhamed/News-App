import 'package:flutter/material.dart';

import '../models/NewsModel.dart';
import 'CategoryWidget.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});  
  final List<NewsModel> news = const [
    NewsModel(image: 'assets/Business.jpeg', text: 'Business'),
    NewsModel(image: 'assets/general.avif', text: 'General'),
    NewsModel(image: 'assets/entertainment.png', text: 'Entertainment'),
    NewsModel(image: 'assets/technology.jpeg', text: 'Technology'),
    NewsModel(image: 'assets/healthh.jpeg', text: 'Health'),
    NewsModel(image: 'assets/science.avif', text: 'Science'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: news.length,
      itemBuilder:(context,index) {
        return CategoryWidget(model: news[index]);
      }
      );
  }
}