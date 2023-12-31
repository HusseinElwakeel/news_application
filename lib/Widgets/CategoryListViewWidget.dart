import 'package:flutter/material.dart';
import 'package:news_application/Models/CategoryModel.dart';
import 'package:news_application/Widgets/CategoryWidget.dart';

class CategoryListViewWidget extends StatelessWidget {
  const CategoryListViewWidget({super.key, required this.Catergory});
  final List Catergory;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: Catergory.length,
          itemBuilder: (context, index) => CategoryWidget(
                catogery: Catergory[index],
              )),
    );
  }

  void sum2nums(num1, num2) {
    return num1 + num2;
  }
}
