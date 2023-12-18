import 'package:flutter/material.dart';
import 'package:news_app/services/newsServices.dart';
import 'package:news_app/views/HomePage.dart';
import 'package:dio/dio.dart';
void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ); // This trailing comma makes auto-formatting nicer for build methods.
   
  }
}
