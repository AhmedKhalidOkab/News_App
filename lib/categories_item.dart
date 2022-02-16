// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:news_app2/categories_gride_widget.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class Categories extends StatelessWidget {
  Function onCategoryClickCallBack;
  // ignore: use_key_in_widget_constructors
  Categories(this.onCategoryClickCallBack);
  List<Category> categories = [
    Category('categoryId', 'assets/images/sports.png', 'Sports',
        const Color.fromRGBO(201, 28, 34, 50)),
    Category('categoryId', 'assets/images/Politics.png', 'Politics',
        const Color.fromRGBO(0, 62, 144, 50)),
    Category('categoryId', 'assets/images/health.png', 'Health',
        const Color.fromRGBO(237, 30, 121, 50)),
    Category('categoryId', 'assets/images/bussines.png', 'Bussines',
        const Color.fromRGBO(207, 126, 72, 50)),
    Category('categoryId', 'assets/images/environment.png', 'Environment',
        const Color.fromRGBO(72, 130, 207, 50)),
    Category('categoryId', 'assets/images/science.png', 'Science',
        const Color.fromRGBO(242, 211, 82, 50)),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text('Pick Your Category of interest',
                style: Theme.of(context).textTheme.headline5),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: GridView.builder(
                // ignore: prefer_const_constructors
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 18,
                ),
                // ignore: avoid_types_as_parameter_names
                itemBuilder: (BuildContext, index) {
                  return categoriesGrideWidget(
                    categories[index],
                    index,
                    (category) {
                      onCategoryClickCallBack(category);
                    },
                  );
                },
                itemCount: categories.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
