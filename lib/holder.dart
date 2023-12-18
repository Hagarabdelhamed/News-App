import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Widget/NewsColumn.dart';
import 'package:news_app/services/newsServices.dart';

import '../models/NewsModel.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key, required this.category});
  final String category;
  @override
  State<NewsListView> createState() => _NewsListViewState();

}

class _NewsListViewState extends State<NewsListView> {

  List<NewsModel> article = [];
  bool isLoading = true ;

  @override
  void initState()  {
    super.initState();
     getGeneralNews();
  }

  Future<void> getGeneralNews() async{
   article = await NewsServices(Dio()).getTopHeadline( categoryy: 'general');
   isLoading =false;
   setState(() {});
   }
  @override
  Widget build(BuildContext context) {
    return isLoading ? const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())): SliverList(
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
