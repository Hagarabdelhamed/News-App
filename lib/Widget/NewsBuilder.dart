
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

  
  List<NewsModel> article = [];
  bool isLoading = true ;

  @override
  void initState()  {
    super.initState();
     getGenNews();
  }

  Future<void> getGenNews() async{
   article = await NewsServices(Dio()).getGeneralNews();
   isLoading =false;
   setState(() {});
   }

  @override
  Widget build(BuildContext context) {
    return isLoading ? const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(top : 220),
        child: Center(child: CircularProgressIndicator()),
      )) : article.isEmpty ? const SliverToBoxAdapter(child: SizedBox(height: 500,child:Center(child: Text('NO CONTENT TO APPEAR' ,
      style: TextStyle(fontWeight: FontWeight.bold , fontSize: 30 , color: Colors.amber,decoration: TextDecoration.underline ,),))),)
      : NewsListView(article: article,);
  }
}
