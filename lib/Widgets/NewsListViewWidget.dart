import 'package:flutter/material.dart';
import 'package:news_application/Widgets/NewsWidget.dart';

class NewsListViewWidget extends StatelessWidget {
  NewsListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
      SliverList(
      //= listview.builder() (to display one item and repeat it)
      delegate: SliverChildBuilderDelegate(
          //to display number of the item
          childCount: 10,
          (context, index) => NewsItem()),
    );


  }
}
