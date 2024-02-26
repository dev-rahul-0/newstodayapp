import 'package:flutter/material.dart';

class NewsContain extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;

  NewsContain(
      {super.key,
      required this.imgUrl,
      required this.newsDes,
      required this.newsHead,
      required this.newsUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Image.network(
              height: 400,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              imgUrl),
          const SizedBox(
            height: 10,
          ),
          Text(
            newsHead,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            newsDes,
            style: const TextStyle(fontSize: 16),
          ),
          ElevatedButton(
              onPressed: () {
                print("Going To $newsUrl");
              },
              child: const Text("Read More"))
        ],
      ),
    );
  }
}
