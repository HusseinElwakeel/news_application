import 'package:flutter/material.dart';
import 'package:news_application/Widgets/NewsWidget.dart';

class NewsListViewWidget extends StatelessWidget {
  const NewsListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => NewsItem());
  }
}
