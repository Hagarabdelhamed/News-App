import 'package:flutter/material.dart';
import 'package:news_app/models/NewsModel.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NewsColumn extends StatelessWidget {
  const NewsColumn({super.key, required this.articles});

   final NewsModel articles;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
         ClipRRect
         (borderRadius: BorderRadius.circular(10),
          child: Image.network(articles.image ?? "https://resize.indiatvnews.com/en/centered/newbucket/1200_675/2020/09/breakingnews-live-blog-1568185450-1595123397-1598924977.jpg")
         ),
           Column(
          
          children: [
            Text(articles.title ?? 'Breaking News' ,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 20,
              fontWeight: FontWeight.bold,
             ),
             maxLines: 2,  
            ),
             Text(articles.subTitle ?? " Breaking News ",
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 15,
              fontWeight: FontWeight.normal,
            color: Color.fromARGB(108, 0, 0, 0)
             ),
             maxLines: 2,  
            ),
            
          ],
         ),
        ],
      ),
    );
  }
}