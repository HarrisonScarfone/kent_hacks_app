import 'package:flutter/material.dart';
import 'package:kent_hack_app/widgets/category_grid_view_circle.dart';

class CategoriesOverviewScreen extends StatelessWidget {
  static const routeName = '/categories-overview-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: <Widget>[
          CategoryGridViewCircle(
            title: 'Human Achievements',
          ),
          CategoryGridViewCircle(
            title: 'Dedication and Collections',
          ),
          CategoryGridViewCircle(
            title: 'Hobbies and Recreation',
          ),
          CategoryGridViewCircle(
            title: 'Food and Drink',
          ),
          CategoryGridViewCircle(
            title: 'Structures/Art and Craft',
          ),
          CategoryGridViewCircle(
            title: 'Jobs and Work',
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
