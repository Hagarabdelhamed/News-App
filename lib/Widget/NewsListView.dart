import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Widget/NewsColumn.dart';
import 'package:news_app/services/newsServices.dart';

import '../models/NewsModel.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();

}

class _NewsListViewState extends State<NewsListView> {

  List<NewsModel> article = [];

  @override
  void initState()  {
    super.initState();
     getGeneralNews();
  }

  Future<List<NewsModel>> getGeneralNews() async => article = await NewsServices(Dio()).getGeneralNews();
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: article.length,
            (context, index) {
      return NewsColumn(articles: article[index]);
    }));



    

    //ListView.builder(
    //   shrinkWrap: true,
    //   physics: NeverScrollableScrollPhysics(),
    //   scrollDirection: Axis.vertical,
    //   itemCount: news.length,
    //   itemBuilder:(context,index) {
    //     return NewsColumn(column: news[index]);
    //   }
    //   );
  }
}
