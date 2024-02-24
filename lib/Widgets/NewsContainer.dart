import 'package:flutter/material.dart';
class NewsContain extends StatelessWidget {
  const NewsContain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width:  MediaQuery.of(context).size.width,
      child: Column(children: [
        Image.network(""),
        Text("News Heading"),
        Text("News Descritpion"),
        ElevatedButton(onPressed: (){}, child: Text("Read More"))
      ],),
    );
  }
}
