import 'package:flutter/material.dart';
import 'package:kent_hack_app/screens/category_list_view_screen.dart';

class CategoryGridViewCircle extends StatelessWidget {
  final String title;

  CategoryGridViewCircle({this.title});

//  void selectCategory(BuildContext ctx) {
//    Navigator.of(ctx).pushNamed(
//      CategoryListViewScreen.routeName,
//      arguments: {
//
//      },
//    );
//  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          child: Ink(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.indigoAccent, width: 8.0),
              color: Colors.indigo[900],
              shape: BoxShape.circle,
            ),
            child: InkWell(
              //This keeps the splash effect within the circle
              borderRadius: BorderRadius.circular(1000.0),
              //Something large to ensure a circle
              onTap: null,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Icon(
                  Icons.message,
                  size: 30.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text('string'),
      ],
    );
  }
}
