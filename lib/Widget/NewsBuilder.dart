
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/NewsModel.dart';
import '../services/newsServices.dart';
import 'NewsListView.dart';

class NewsBuilder extends StatelessWidget {
  const NewsBuilder({super.key});



  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future: NewsServices(Dio()).getGeneralNews(),
      builder:(context , SnapShot)
      {
        return NewsListView(article: SnapShot.data ?? [] ); 
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
