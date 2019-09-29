import 'package:flutter/material.dart';
//import 'package:kent_hack_app/widgets/pr_wr_comparison.dart';
//import 'package:charts_flutter/flutter.dart' as charts;

class PastFailureScreen extends StatelessWidget {
  static const routeName = '/past-failures-screen';
  //final List<charts.Series> seriesList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Past Failures"),
      ),
      body: Column(
        children: <Widget>[
            Column(
              children: <Widget>[
               Row(
                 children: <Widget>[
                   Text('string1'),
                   SizedBox(width: 200),
                   Text('string2'),
                 ],
               ),
                Divider(color: Colors.black,),
                Row(
                  children: <Widget>[
                    Text('string 3'),
                    SizedBox(width: 200),
                    Text('string 4'),
                  ],
                )
              ],
            )
        ],
      )
    );
  }
}