import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final dio = Dio();

  NewsServices(Dio dio);

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=3c88955c487e4d9db668f011dd85e737&country=us&category=$category',
      );
      Map<String, dynamic> jsonData = response.data;
      //----list of map
      List<dynamic> articles = jsonData['articles'];
      //list of object
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
        );
        articlesList.add(articleModel);
      }

      return (articlesList);
    } on Exception catch (e) {
      print(e);

      return [];
    }
  }
}
