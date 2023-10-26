import 'package:flutter/material.dart';
import 'package:news_app/Widget/CategoryListView.dart';
import 'package:news_app/Widget/CategoryWidget.dart';
import 'package:news_app/models/NewsModel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
