// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class categoriesGrideWidget extends StatelessWidget {
  Category category;
  int index;
  Function onClickCategory;
  //***Create objet from the Data class to get all items from data class*****

  categoriesGrideWidget(this.category, this.index, this.onClickCategory);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClickCategory(category);
      },
      child: Container(
        decoration: BoxDecoration(
            color: category.background,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
                bottomRight: Radius.circular(index % 2 == 0 ? 0 : 25),
                bottomLeft: Radius.circular(index % 2 == 1 ? 0 : 25))),
        child: Column(
          children: [
            Text(
              category.title,
              style: Theme.of(context).textTheme.headline4,
            ),
            Image.asset(
              category.imagePath,
              height: 120,
            ),
          ],
        ),
      ),
    );
  }
}

class Category {
  String categoryId;
  String imagePath;
  String title;
  Color background;
  Category(this.categoryId, this.imagePath, this.title, this.background);
}
