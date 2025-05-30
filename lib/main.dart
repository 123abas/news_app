import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/views/home_view.dart';

void main()
{
  
  runApp(NewsApp());
 
}


class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: HomeView());
  }
}