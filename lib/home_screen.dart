// ignore_for_file: prefer_const_constructors, avoid_init_to_null

import 'package:flutter/material.dart';
import 'package:news_app2/categories_item.dart';
import 'package:news_app2/categories_gride_widget.dart';
import 'package:news_app2/category_details_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Homescreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Image.asset(
            'assets/images/pattern.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Scaffold(
          drawer: Drawer(
            child: ListView(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  color: Theme.of(context).primaryColor,
                  child: Container(
                    color: Theme.of(context).primaryColor,
                    margin: EdgeInsets.all(12),
                    height: MediaQuery.of(context).size.height / 20,
                    child: Text(
                      'Side Menu',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    setState(() {
                      selectedCategory = null;
                    });
                  },
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.list,
                        color: Colors.black,
                        size: 35,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Categories',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.settings,
                        color: Colors.black,
                        size: 35,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Settings',
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                    ],
                  ),
                )
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text('News App'),
          ),
          body: selectedCategory == null
              ? Categories(onCategoryClickCallBack)
              : CategoryScreen(selectedCategory!),
        ),
      ],
    );
  }

  Category? selectedCategory = null;

  void onCategoryClickCallBack(Category category) {
    // ignore: avoid_print
    print(category.title);

    setState(() {
      selectedCategory = category;
    });
  }
}
