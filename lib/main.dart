import 'package:flutter/material.dart';
import 'package:kent_hack_app/screens/main_menu_screen.dart';

import 'screens/categories_overview_screen.dart';
import 'screens/category_list_view_screen.dart';
import 'screens/comparison_screen.dart';
import 'screens/home_screen.dart';
import 'screens/past_failures_screen.dart';
import 'screens/profile_screen.dart';

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
        HomeScreen.routeName: (ctx) => HomeScreen(),
        ProfileScreen.routeName: (ctx) => ProfileScreen(),
        PastFailureScreen.routeName: (ctx) => PastFailureScreen(),
        CategoriesOverviewScreen.routeName: (ctx) => CategoriesOverviewScreen(),
        CategoryListViewScreen.routeName: (ctx) => CategoryListViewScreen(),
        ComparisonScreen.routeName: (ctx) => ComparisonScreen(),
      },
    );
  }
}
