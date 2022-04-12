import 'package:flutter/material.dart';
import 'package:news_app/model/model.dart';
import 'package:news_app/utils/utils.dart';
import 'package:news_app/widget/carousel.dart';
import 'package:news_app/widget/tabBar_menu.dart';


class NewsPage extends StatefulWidget {
  final List<Article> article;

  NewsPage({Key? key, required this.article}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text('Breaking News', style: titleHome),
          ),
          CarouselWidget(
            articleList: widget.article,
          ),
          TabBarMenu(
            article: widget.article,
          )
        ],
      ),
    );
  }
}