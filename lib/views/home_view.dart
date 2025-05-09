import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/category_listView.dart';
import 'package:news_app/widgets/news_listView.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';
import 'package:news_app/widgets/news_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News', style: TextStyle(fontSize: 16, color: Colors.black)),
            Text('Cloud', style: TextStyle(fontSize: 16, color: Colors.orange)),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white38,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoryListView()),
            SliverToBoxAdapter(child: SizedBox(height: 32)),
             NewsListViewBuilder(category: 'general',),
          ],
        ),

       
      ),
    );
  }
}


