// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:news_app2/class_apis.dart';

class TabItem extends StatelessWidget {
  Sources sources;
  bool isselected;
  // ignore: use_key_in_widget_constructors
  TabItem(this.sources, this.isselected);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color:
              isselected ? Theme.of(context).primaryColor : Colors.transparent,
          border: Border.all(color: Theme.of(context).primaryColor, width: 1)),
      child: Text(sources.name ?? "", style: TextStyle(color: Colors.black)),
    );
  }
}
