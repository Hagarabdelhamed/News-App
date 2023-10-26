import 'package:flutter/material.dart';
import 'package:news_app/Widget/NewsColumn.dart';

import '../models/NewsModel.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

    final List<NewsModel> news = const [
  NewsModel(image: 'assets/palastine.jpeg', 
            title: 'Israel continues to commit war crimes against Palestinians, UN chief urges two-state solution', 
            subTitle: 'The Israeli air force has been bombing civilians in Gaza for the 18th day in a row, killing at least 704 people and injuring more than 15,000, according to the Palestinian Ministry of Health in the Gaza Strip. Among the dead are many children and women, and the ministry has documented 47 massacres in the past hours. ',),
  NewsModel(image: 'assets/palastine.jpeg', 
            title: 'Israel continues to commit war crimes against Palestinians, UN chief urges two-state solution', 
            subTitle: 'The Israeli air force has been bombing civilians in Gaza for the 18th day in a row, killing at least 704 people and injuring more than 15,000, according to the Palestinian Ministry of Health in the Gaza Strip. Among the dead are many children and women, and the ministry has documented 47 massacres in the past hours. ',),
  NewsModel(image: 'assets/palastine.jpeg', 
            title: 'Israel continues to commit war crimes against Palestinians, UN chief urges two-state solution', 
            subTitle: 'The Israeli air force has been bombing civilians in Gaza for the 18th day in a row, killing at least 704 people and injuring more than 15,000, according to the Palestinian Ministry of Health in the Gaza Strip. Among the dead are many children and women, and the ministry has documented 47 massacres in the past hours. ',),
  NewsModel(image: 'assets/palastine.jpeg', 
            title: 'Israel continues to commit war crimes against Palestinians, UN chief urges two-state solution', 
            subTitle: 'The Israeli air force has been bombing civilians in Gaza for the 18th day in a row, killing at least 704 people and injuring more than 15,000, according to the Palestinian Ministry of Health in the Gaza Strip. Among the dead are many children and women, and the ministry has documented 47 massacres in the past hours. ',),
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: news.length,
      itemBuilder:(context,index) {
        return NewsColumn(column: news[index]);
      }
      );
  }
}