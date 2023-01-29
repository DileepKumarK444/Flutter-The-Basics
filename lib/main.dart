import 'package:flutter/material.dart';
import 'package:the_basics/locator.dart';
import 'package:the_basics/views/home/home_view.dart';
import 'package:the_basics/views/layout_template/layout_template.dart';
// import 'package:the_basics/views/home/home_view.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme:
                Theme.of(context).textTheme.apply(fontFamily: 'Open Sans')),
        home: LayoutTemplate());
  }
}
