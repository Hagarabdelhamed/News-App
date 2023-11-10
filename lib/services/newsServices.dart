import 'package:dio/dio.dart';
import 'package:news_app/models/NewsModel.dart';

class NewsServices{
final Dio dio;
 

  NewsServices(this.dio);

   Future<List<NewsModel>> getGeneralNews () async
  {
    Response response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=f63064a4fbf247a782ba7424778f20b8&country=us&category=general');
    Map<String,dynamic> Json =response.data;
    List<dynamic> articales = Json["articles"];
    List<NewsModel> artcileList =[];

    for (var articale in articales) {
      NewsModel newsModel = NewsModel(image: articale['urlToImage'], title: articale['title'], subTitle: articale['description']);
      artcileList.add(newsModel);
      
    }
    return artcileList;
  }


}