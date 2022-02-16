// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:news_app2/categories_gride_widget.dart';
import 'package:news_app2/api_manager.dart';
import 'package:news_app2/category_tabs_widget.dart';
import 'package:news_app2/class_apis.dart';

class CategoryScreen extends StatelessWidget {
  Category category;
  CategoryScreen(this.category);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<NewsResponse>(
        future: ApiManager.loadNewsSourses(category.categoryId),
        builder: (BuildContext context, AsyncSnapshot<NewsResponse> snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemBuilder: (_, index) {
              return Text(snapshot.data?.sources?.elementAt(index).name ?? "");
            },
            itemCount: snapshot.data?.sources?.length ?? 0,
          );
          // ignore: dead_code
          //return CategoryTabWidget(snapshot.data?.sources ?? []);
        },
      ),
    );
  }
}
