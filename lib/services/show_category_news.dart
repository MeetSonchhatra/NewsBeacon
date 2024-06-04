import 'dart:convert';

import 'package:newsbeacon/model/article_model.dart';
import 'package:http/http.dart' as http;
import 'package:newsbeacon/model/show_catagorymodel.dart';
import 'package:newsbeacon/model/slider_model.dart';

class ShowCategoryNews {
  List<ShowCategoryModel> categories = [];

  Future<void> getCategories(String category) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=e3978d91360343e1baca32f0b26c2d54";
    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element["urlToImage"] != null && element['description'] != null) {
          ShowCategoryModel categoryModel = ShowCategoryModel(
            title: element["title"],
            description: element["description"],
            url: element["url"],
            urlToImage: element["urlToImage"],
            content: element["content"],
            author: element["author"],
          );

          categories.add(categoryModel);
        }
      });
    }
  }
}
