import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:get/get.dart';
import 'package:news_app/Model/NewsModel.dart';

class Newscontroller extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getTrending();
    getNewsTile();
  }

  RxList<NewsModel> NewsList = <NewsModel>[].obs;

  Future<void> getTrending() async {
    var url =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=0f23d5f319ae4b748117127560bf6ec8";

    try {
      final response = await http.get(Uri.parse(url));
      var data = jsonDecode(response.body.toString());
      var article = data["articles"];
      if (response.statusCode == 200) {
        for (Map<String, dynamic> index in article) {
          NewsList.add(NewsModel.fromJson(index));
        }
      } else {}
    } catch (e) {
      print(e);
    }
  }



   Future<void> getNewsTile() async {
    var url =
        "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=0f23d5f319ae4b748117127560bf6ec8";

    try {
      final response = await http.get(Uri.parse(url));
      var data = jsonDecode(response.body.toString());
      var article = data["articles"];
      if (response.statusCode == 200) {
        for (Map<String, dynamic> index in article) {
          NewsList.add(NewsModel.fromJson(index));
        }
      } else {}
    } catch (e) {
      print(e);
    }
  }
}
