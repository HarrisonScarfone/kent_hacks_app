import 'package:flutter/material.dart';
import 'package:kent_hack_app/widgets/failure_views.dart';

class PastFailureScreen extends StatelessWidget {
  static const routeName = '/past-failures-screen';

  @override
  Widget build(BuildContext context) {
    final List<List<int>> args = ModalRoute.of(context).settings.arguments;
    print(args);
    return Scaffold(
      body: Center(
          child: Column(
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
            ),
          SizedBox(height: 30),
          Text(
            'Past Failures',
            style: TextStyle(
                color: Color(0xFF00B4BD), fontSize: 30, fontFamily: 'rockwell'),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border(
                  top: BorderSide(width: 3.0, color: Color(0xFFFFF7BF)),
                  left: BorderSide(width: 3.0, color: Color(0xFFFFF7BF)),
                  right: BorderSide(width: 3.0, color: Color(0xFFFFF7BF)),
                  bottom: BorderSide(width: 3.0, color: Color(0xFFFFF7BF))
                ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  FailureView(),
                ],
              ),
            ),
          ),
        ],
      ),
    )
    );
  }
}