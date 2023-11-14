import 'package:flutter/material.dart';
import 'package:news_application/Widgets/NewsWidget.dart';

class NewsListViewWidget extends StatelessWidget {
  NewsListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          //to display number of the item
          childCount: 10,
          (context, index) => NewsItem()),
    );

    // ListView.builder(
    //   //to build all Listview together and it's problem because it will lead to loading in the problem
    //   // to build All children of listview
    //   shrinkWrap: true,
    //   // we will make it never because CustomScrollView have its  scroll
    //   physics: NeverScrollableScrollPhysics(),
    //   itemCount: 20,
    //   itemBuilder: (context, index) => NewsItem());
  }
}
