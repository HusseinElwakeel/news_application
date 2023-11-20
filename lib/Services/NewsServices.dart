import 'package:dio/dio.dart';

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
    var jsonData = response.data;
    // go to link of api response  and see the data we will find it map key "status","articles","totalResults"
    //and value is list or number or string (dynamic) so do next
    //or do that :
    // Map<String ,dynamic> jsonData =response.data;
  }
}
