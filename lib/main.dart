import 'package:flutter/material.dart';
import 'package:news_app2/home_screen.dart';
import 'my_theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: MyThemeData.lightTheme,
      routes: {
        // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
        HomeScreen.routeName: (BuildContext) => HomeScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
