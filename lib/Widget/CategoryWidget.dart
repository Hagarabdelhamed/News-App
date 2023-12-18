import 'package:flutter/material.dart';
import 'package:news_app/models/CategoryModel.dart';
import 'package:news_app/views/CategoryPage.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.model});
  final CategoryModel model;
  @override
  Widget build(BuildContext context) {
    return Row(  
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoryPage(category: model.text ), ),);
          },
          child: Padding(
            padding: const EdgeInsets.only (right: 8),
            child: Container(
              height: 120,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(model.image!),
                ),
              ),
              child: Center(
                  child: Text(
                model.text!,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              )),
            ),
          ),
        )
      ],
    );
  }
}
