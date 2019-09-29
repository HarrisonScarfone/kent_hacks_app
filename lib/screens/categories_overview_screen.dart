import 'package:flutter/material.dart';
import 'package:kent_hack_app/screens/comparison_screen.dart';
import 'package:kent_hack_app/widgets/category_grid_view_circle.dart';



class CategoriesOverviewScreen extends StatelessWidget {
  static const routeName = '/categories-overview-screen';

  @override
  Widget build(BuildContext context) {

    void goToComparison() {
      Navigator.of(context).pushNamed(ComparisonScreen.routeName);
    }

    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: <Widget>[
          CategoryGridViewCircle(
            title: 'Human Achievements',
            function: goToComparison,
            icon: Icon(
              Icons.work,
              size: 30,
              color: Color(0xFF00B4BD),
            ),
          ),
          CategoryGridViewCircle(
              title: 'Dedication and Collections',
              function: goToComparison,
              icon: Icon(
                Icons.collections,
                size: 30,
                color: Color(0xFF00B4BD),
              )),
          CategoryGridViewCircle(
            title: 'Hobbies and Recreation',
            function: goToComparison,
            icon: Icon(
              Icons.golf_course,
              size: 30,
              color: Color(0xFF00B4BD),
            ),
          ),
          CategoryGridViewCircle(
            title: 'Food and Drink',
            function: goToComparison,
            icon: Icon(
              Icons.fastfood,
              size: 30,
              color: Color(0xFF00B4BD),
            ),
          ),
          CategoryGridViewCircle(
            title: 'Structures/Art and Craft',
            function: goToComparison,
            icon: Icon(
              Icons.art_track,
              size: 30,
              color: Color(0xFF00B4BD),
            ),
          ),
          CategoryGridViewCircle(
            title: 'Jobs and Work',
            function: goToComparison,
            icon: Icon(
              Icons.work,
              size: 30,
              color: Color(0xFF00B4BD),
            ),
          ),
        ],
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
