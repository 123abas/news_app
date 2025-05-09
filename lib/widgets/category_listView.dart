import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryModel> categoryList = const [
    CategoryModel(
      categoryImage: 'assets/business.avif',
      categoryName: 'Business',
    ),
    CategoryModel(
      categoryImage: 'assets/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      categoryImage: 'assets/general.avif',
      categoryName: 'general',
    ),
    CategoryModel(categoryImage: 'assets/health.avif', categoryName: 'health'),
    CategoryModel(
      categoryImage: 'assets/science.avif',
      categoryName: 'science',
    ),
    CategoryModel(categoryImage: 'assets/sports.avif', categoryName: 'sports'),
    CategoryModel(
      categoryImage: 'assets/technology.jpeg',
      categoryName: 'technology',
    ),
    //5
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categoryList[index]);
        },
      ),
    );
  }
}
