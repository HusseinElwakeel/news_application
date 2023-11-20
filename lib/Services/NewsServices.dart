
import 'package:dio/dio.dart';

class NewsServices{
  final Dio dio ;

  NewsServices(this.dio);

  void getNews() async {
    final response = await dio.get('https://newsapi.org/v2/top-headlines?apikey=788c7ef99218431a9bb511b97cc976aa&language=ar#');
    print(response);
  }
}