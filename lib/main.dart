import 'package:flutter/material.dart';
import 'package:kent_hack_app/screens/main_menu_screen.dart';
import 'screens/categories_overview_screen.dart';
import 'screens/comparison_screen.dart';
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
      title: 'Someone Did It Better',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        fontFamily: 'legenddeca',
        textTheme: TextTheme(
          body1: TextStyle(color: Color(0xFFFFF7BF)),
          title: TextStyle(fontFamily: ''),
        ),
      ),
      routes: {
        '/': (ctx) => MainMenuScreen(),
          ComparisonScreen.routeName: (ctx) => ComparisonScreen(),
          ProfileScreen.routeName: (ctx) => ProfileScreen(),
          PastFailureScreen.routeName: (ctx) => PastFailureScreen(),
          CategoriesOverviewScreen.routeName: (ctx) => CategoriesOverviewScreen(),
          ComparisonScreen.routeName: (ctx) => ComparisonScreen(),
        },
    );
  }
}