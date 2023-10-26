import 'package:flutter/material.dart';
import 'package:news_app/models/NewsModel.dart';

class NewsColumn extends StatelessWidget {
  const NewsColumn({super.key, required this.column});
   final NewsModel column;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
         ClipRRect
         (borderRadius: BorderRadius.circular(10),
          child: Image.asset(column.image),
         ),
           Column(
          
          children: [
            Text(column.title ,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 20,
              fontWeight: FontWeight.bold,
             ),
             maxLines: 2,  
            ),
             Text(column.subTitle,
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