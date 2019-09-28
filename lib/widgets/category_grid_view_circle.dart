import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kent_hack_app/models/database_access.dart';
import 'dart:math';

import 'package:kent_hack_app/screens/comparison_screen.dart';

class CategoryGridViewCircle extends StatelessWidget {
  final String title;
  var record;

  CategoryGridViewCircle({this.title});

  final _random = new Random();

  int next(int min, int max) => min + _random.nextInt(max - min);

  void getRecords() {
    DatabaseAccess().getQueryByCategory('records', title).then(
          (QuerySnapshot docs) {
        if (docs.documents.isNotEmpty) {
          record = docs.documents[next(0, docs.documents.length-1)];
        };
      },
    );
  }

  void goToRecords(BuildContext context) {
    Navigator.of(context).pushNamed(
       ComparisonScreen.routeName);
  }

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
              onTap: () => goToRecords,
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
        Text(title),
      ],
    );
  }
}
