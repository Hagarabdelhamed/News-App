import 'package:flutter/material.dart';
import 'package:news_app/Widget/NewsColumn.dart';

import '../models/NewsModel.dart';

class NewsListView extends StatelessWidget{
  final List<NewsModel> article;

  const NewsListView({super.key, required this.article});

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
