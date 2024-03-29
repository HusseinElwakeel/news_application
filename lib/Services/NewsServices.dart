import 'package:dio/dio.dart';
import 'package:news_application/Models/ArticleModel.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  // i want to Make response (type response ) and async because it will take Time
  // and i will use dio to get data
  // go to API and go to EndPoints and see what i want
  // we need here specific news and with language ar
  // base url / method ? query (parameter)
  //get(request) the result of request is response

  void getGeneralNews() async {
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=eg&apiKey=788c7ef99218431a9bb511b97cc976aa&category=general");
    print(response);
    // to see json response data
    //var jsonData = response.data;
    // go to link of api response  and see the data we will find it map key "status","articles","totalResults"
    //and value is list or number or string (dynamic) so do next
    //or do that :
    Map<String, dynamic> jsonData = response.data;
    print(jsonData["totalResults"]); //to print data in json
    // in jsonData we use  dynamic List<dynamic> in list and Map<String ,dynamic> in map

    List<dynamic> articlesData = jsonData["articles"];

    //transfer map  to object(important)
    List<ArticleModel> articlesList = [];
    for (var article in articlesData) {
      //make object of items
      ArticleModel articleModel = ArticleModel(
          articleName: article["articleName"],
          articleDetails: article["description"],
          articleImage: article["urlToImage"],
       source: Source(id: article["source"]["id"], name: article["source"]["name"])
      );
      articlesList.add(articleModel);
    }
    print(articlesList);

    // print(articlesData);

    // to change data type use as + new data type

    //to print the artical only and its name
    // for (var article in articlesData) {
    //   print(article["$artics"]);
    //   //   print(artical["name"]);
    //   // }
    //   //
    // }


  }
}
