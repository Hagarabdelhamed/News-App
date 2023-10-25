import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: RichText(
            text: const TextSpan(
              text: 'News',
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Cloud',
                  style: TextStyle(
                    color: Color(0xffFFB000),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
