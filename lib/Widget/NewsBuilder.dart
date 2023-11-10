
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/NewsModel.dart';
import '../services/newsServices.dart';
import 'NewsListView.dart';

class NewsBuilder extends StatefulWidget {
  const NewsBuilder({
    super.key,
  });

  @override
  State<NewsBuilder> createState() => _NewsBuilderState();
}

class _NewsBuilderState extends State<NewsBuilder> {


  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future: NewsServices(Dio()).getGeneralNews(),
      builder:(context , SnapShot)
      {
        return NewsListView(article: SnapShot.data ?? [] ); 
      }
    );


  }
}
