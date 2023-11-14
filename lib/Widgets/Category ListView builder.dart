import 'package:flutter/material.dart';
import 'package:news_application/Models/CategoryModel.dart';
import 'package:news_application/Widgets/CategoryWidget.dart';

class ListViewCategory extends StatelessWidget {
  const ListViewCategory({super.key, required this.Catergory});
  final List Catergory;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Catergory.length,
        itemBuilder: (context, index) => CategoryWidget(
              catogery: Catergory[index],
            ));
  }
}
