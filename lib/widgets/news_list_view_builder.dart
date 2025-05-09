import 'package:dio/dio.dart';
import 'package:flutter/material.dart'
    show CircularProgressIndicator, SliverToBoxAdapter;
import 'package:flutter/widgets.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_listView.dart';

class NewsListViewBuilder extends StatefulWidget {

  @override
  final String category;

  const NewsListViewBuilder({super.key, required this.category});
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
   future= NewsServices(Dio()).getTopHeadlines(
    category:widget.category,
    );
  }
  @override
  
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future:future, 
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Text('oops there was an error,try latter'),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );

  
  }
}
