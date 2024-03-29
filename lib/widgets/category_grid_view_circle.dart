import 'package:flutter/material.dart';

class CategoryGridViewCircle extends StatelessWidget {
  final String title;
  final Function function;
  final Icon icon;

  CategoryGridViewCircle({this.title, this.function, this.icon});

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
              onTap: function,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: icon,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(title),
      ],
    );
  }
}
