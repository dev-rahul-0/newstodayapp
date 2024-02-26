//https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=92a9e35f6b6f42fba5fdf9f8de8fbd84

import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart';

class FetchNews {
  static List sourceId = [
    "abc-news",

    "bbc-news",
    "bbc-sport",

    "business-insider",

    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",

    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",

    "medical-news-today",

    "national-geographic",

    "news24",
    "new-scientist",

    "new-york-magazine",
    "next-big-future",

    "techcrunch",
    "techradar",

    "the-hindu",

    "the-wall-street-journal",

    "the-washington-times",
    "time",
    "usa-today",
  ];
  static Future fetchNews() async {
  final _random = new Random();
  var element = sourceId[_random.nextInt(sourceId.length)];
    Response response = await get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?sources=$element&apiKey=92a9e35f6b6f42fba5fdf9f8de8fbd84"));
    Map body_data = jsonDecode(response.body);
    List<dynamic>? articles = body_data["articals"];
    print(body_data);

  final _Newrandom = new Random();
  var myArticals = articles?[_random.nextInt(articles.length)];
  print(myArticals);
  }
}
