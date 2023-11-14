// make widget for the category
import 'package:flutter/material.dart';
import '../Models/CategoryModel.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.catogery});
  final CategoryModel catogery;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Container(
        height: 120,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.yellowAccent,
          //to add image to container:
          image: DecorationImage(
              image: AssetImage(catogery.Image), fit: BoxFit.fill),
        ),
        child: Center(
          child: Text(
            catogery.Text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
