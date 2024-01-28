//we put ? because it may be empty
class ArticleModel {
  final String articleName;
  final String? articleDetails;
  final String? articleImage;
  //do not do (dont prefer the map):
  // Map<String,String>source ;
  //or the best is :
  final Source source;


  ArticleModel(
      {

        required this.source,
        required this.articleName,
      required this.articleDetails,
      required this.articleImage});
}
// if i want to do source and transfer it to object
class Source{
  final String id;
  final String name;
  Source({required this.id,required this.name});
}
