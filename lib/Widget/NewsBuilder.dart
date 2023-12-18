import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/views/CategoryPage.dart';
import '../models/NewsModel.dart';
import '../services/newsServices.dart';
import 'NewsListView.dart';

class NewsBuilder extends StatefulWidget {
  const NewsBuilder({super.key});

  @override
  State<NewsBuilder> createState() => _NewsBuilderState();
}

class _NewsBuilderState extends State<NewsBuilder> {
  dynamic future;
  @override
  void initState() {
    future = NewsServices(Dio()).getTopHeadline(categoryy: 'general');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
        future: future,
        builder: (context, SnapShot) {
          if (SnapShot.hasData) {
            return NewsListView(article: SnapShot.data!);
          }
          else if (SnapShot.hasError) {
            return const SliverToBoxAdapter(
              child: SizedBox(
                  height: 500,
                  child: Center(
                      child: Text(
                    'NO CONTENT TO APPEAR',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.amber,
                      decoration: TextDecoration.underline,
                    ),
                  ))),
            );
          }

          else {
             return const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 220),
              child: Center(child: CircularProgressIndicator()),
            ),
          );
          }
        }
        );

    // return isLoading ? const SliverToBoxAdapter(
    //   child: Padding(
    //     padding: EdgeInsets.only(top : 220),
    //     child: Center(child: CircularProgressIndicator()),
    //   )) : article.isEmpty ? const SliverToBoxAdapter(child: SizedBox(height: 500,child:Center(child: Text('NO CONTENT TO APPEAR' ,
    //   style: TextStyle(fontWeight: FontWeight.bold , fontSize: 30 , color: Colors.amber,decoration: TextDecoration.underline ,),))),)
    //   : NewsListView(article: article,);
  }
}
