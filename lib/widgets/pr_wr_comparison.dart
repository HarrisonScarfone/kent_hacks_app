import "package:flutter/material.dart";

class PR_WRComparison extends StatelessWidget {

  final String recordTitle = "TODO - get name from database";

  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                  child: Text(
                      recordTitle,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
              ),
            ],
          ),
          Row(
           children: <Widget>[
             Row(
               children: <Widget>[

               ],
             ),
             Row(

             ),
           ],
          )
        ],
      )
    );
  }
}