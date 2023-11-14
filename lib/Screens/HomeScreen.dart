import 'package:flutter/material.dart';
import 'package:news_application/Models/CategoryModel.dart';
import 'package:news_application/Widgets/CategoryWidget.dart';
import 'package:news_application/Widgets/NewsWidget.dart';

import '../Widgets/Category ListView builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<CategoryModel> CategoryItem =
      //make it const to not remove const in home screen
      const [
    CategoryModel(Image: "assets/images/business.avif", Text: "Business"),
    CategoryModel(
        Image: "assets/images/entertaiment.avif", Text: "Entertaiment"),
    CategoryModel(Image: "assets/images/general.avif", Text: "General"),
    CategoryModel(Image: "assets/images/health.avif", Text: "Health"),
    CategoryModel(Image: "assets/images/science.avif", Text: "Science"),
    CategoryModel(Image: "assets/images/sports.avif", Text: "Sports"),
    CategoryModel(Image: "assets/images/technology.jpeg", Text: "Technology"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //to remove the background of elevation
        elevation: 0,
        title: Row(
          // to make the row in center of screen
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 22,
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          ListViewCategory(
            Catergory: CategoryItem,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) =>NewsItem()
            ),
          ),
        ],
      ),

    );
  }
}
