//https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=92a9e35f6b6f42fba5fdf9f8de8fbd84

import 'dart:convert';

import 'package:http/http.dart';

class FetchNews {
  static fetchNews() async {
    Response response = await get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=92a9e35f6b6f42fba5fdf9f8de8fbd84"));
    Map body_data = jsonDecode(response.body);
    print(body_data);
  }
}
