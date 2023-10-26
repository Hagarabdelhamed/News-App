import 'package:flutter/material.dart';
import 'package:news_app/Widget/CategoryListView.dart';
import 'package:news_app/Widget/CategoryWidget.dart';
import 'package:news_app/models/NewsModel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // final List<NewsModel> news = const [
  //   NewsModel(image: 'assets/Business.jpeg', text: 'Business'),
  //   NewsModel(image: 'assets/general.avif', text: 'General'),
  //   NewsModel(image: 'assets/entertainment.png', text: 'Entertainment'),
  //   NewsModel(image: 'assets/technology.jpeg', text: 'Technology'),
  //   NewsModel(image: 'assets/healthh.jpeg', text: 'Health'),
  //   NewsModel(image: 'assets/science.avif', text: 'Science'),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: RichText(
            text: const TextSpan(
              text: 'News',
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Cloud',
                  style: TextStyle(
                    color: Color(0xffFFB000),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: const CategoryListView(),
    );
  }
}
