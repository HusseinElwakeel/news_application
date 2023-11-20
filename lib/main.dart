import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_application/Screens/HomeScreen.dart';
import 'package:news_application/Services/NewsServices.dart';

void main() {
  getNews();
  runApp(const MyApp());
}
final dio = Dio();

void getNews() async {
  final response = await dio.get('https://newsapi.org/v2/top-headlines?apikey=788c7ef99218431a9bb511b97cc976aa&language=ar#');
  print(response);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: HomeScreen(),
    );
  }
}


