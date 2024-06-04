import 'dart:convert';

import 'package:newsbeacon/model/article_model.dart';
import 'package:http/http.dart' as http;

class News{
  List<ArticleModel> news = [];

  Future<void> getNews()async {
    String url  = "https://newsapi.org/v2/everything?q=tesla&from=2024-04-14&sortBy=publishedAt&apiKey=e3978d91360343e1baca32f0b26c2d54";
    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    if(jsonData['status'] == 'ok'){
      jsonData['articles'].forEach((element){
        if(element["urlToImage"]!=null && element['description']!=null){
          ArticleModel articlemodel = ArticleModel(
            title: element["title"],
            description: element["description"],
            url: element["url"],
            urlToImage: element["urlToImage"],
            content: element["content"],
            author: element["author"],
          );

          news.add(articlemodel);
        }
      });
    }
  }
}