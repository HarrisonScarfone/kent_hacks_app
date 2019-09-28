import 'package:flutter/material.dart';
import 'package:kent_hack_app/screens/comparison_screen.dart';
import 'package:kent_hack_app/screens/main_menu_screen.dart';
import 'package:kent_hack_app/screens/past_failures_screen.dart';
import 'package:kent_hack_app/screens/profile_screen.dart';

import 'screens/categories_overview_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (ctx) => MainMenuScreen(),
        ComparisonScreen.routeName: (ctx) => ComparisonScreen(),
        ProfileScreen.routeName: (ctx) => ProfileScreen(),
        PastFailureScreen.routeName: (ctx) => PastFailureScreen(),
        CategoriesOverviewScreen.routeName: (ctx) => CategoriesOverviewScreen(),
      },
    );
  }
}

class CategoryListViewScreen {
}
