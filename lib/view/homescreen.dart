import 'package:flutter/material.dart';
import 'package:news/Widgets/NewsContainer.dart';
import 'package:news/controller/fetchnews.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    FetchNews.fetchNews();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return NewsContain(
                imgUrl: "https://images.unsplash.com/photo-1588681664899-f142ff2dc9b1?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                newsDes: "India will have 130 million 5G users by the end of this year, within just over a year of consumer 5G services being launched in the country. India’s 5G user base has more than tripled from last year—and is expected to rise to 860 million subscribers by 2029, according to the Ericsson Mobility Report 2023 published Thursday.",
                newsHead: "5g in India",
                newsUrl: "https://www.livemint.com/technology/tech-news/130-mn-5g-users-in-india-by-end2023-11701368185216.html");
          }),
    );
  }
}
