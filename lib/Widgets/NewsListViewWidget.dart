import 'package:flutter/material.dart';
import 'package:news_application/Widgets/NewsWidget.dart';

class NewsListViewWidget extends StatelessWidget {
  const NewsListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        //to build all Listview together and it's problem because it will lead to loading in the problem
        shrinkWrap: true,
        // we will make it never because CustomScrollView have its  scroll
        physics: NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => NewsItem());
  }
}
