import 'package:flutter/material.dart';

class FailureView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Record Name',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(width: 200),
            ],
          ),
          Divider(color: Color(0xFFFFF7BF)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: <Widget>[
              Text('10000',
                style: TextStyle(color: Color(0xFFFC8902), fontSize: 20),
              ),
              //SizedBox(width: 200),
              Text('Record',
                style: TextStyle(color: Color(0xFFFC8902), fontSize: 20),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('564',
                style: TextStyle(color: Color(0xFF00B4BD), fontSize: 20),
              ),
              //SizedBox(width: 200),
              Text('You',
                style: TextStyle(color: Color(0xFF00B4BD), fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}