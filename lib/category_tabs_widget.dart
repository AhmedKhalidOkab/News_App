// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:news_app2/class_apis.dart';
import 'package:news_app2/tab_item.dart';

// ignore: must_be_immutable
class CategoryTabWidget extends StatefulWidget {
  List<Sources> sources;
  CategoryTabWidget(this.sources);

  @override
  State<CategoryTabWidget> createState() => _CategoryTabWidgetState();
}

class _CategoryTabWidgetState extends State<CategoryTabWidget> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Container(
      child: DefaultTabController(
        length: widget.sources.length,
        child: Column(
          children: [
            TabBar(
              indicatorColor: Colors.transparent,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              isScrollable: true,
              tabs: widget.sources
                  .map((element) => TabItem(element,
                      selectedIndex == widget.sources.indexOf(element)))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
