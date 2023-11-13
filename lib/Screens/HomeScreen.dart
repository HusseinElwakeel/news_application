import 'package:flutter/material.dart';
import 'package:news_application/Widgets/CategoryWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      body: CategoryWidget(),
    );
  }
}
