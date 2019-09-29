import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile-screen';

  String name = "TODO - pull user\'s name from storage";
  int records =
      0; //TODO - count the number of records that were compared against

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: Icon(
                Icons.account_circle,
                size: 200,
                color: Color(0xFF00B4BD),
              ),
            ),
            SizedBox(height: 50),
            Center(
                child: Text.rich(
              TextSpan(
                  children: <TextSpan>[
                TextSpan(
                    text: '\n\nYou are not the best at\n\n',
                    style: TextStyle(fontSize: 30, color: Color(0xFF00B4BD))),
                TextSpan(
                    text: records.toString(),
                    style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1E1E1F),
                        backgroundColor: Color(0xFF00B4BD))),
                TextSpan(
                  text: ' things.',
                  style: TextStyle(fontSize: 40, color: Color(0xFF00B4BD)),
                ),
              ]),
              textAlign: TextAlign.center,
            )),
            SizedBox(height: 100),
            Center(
                child: RaisedButton(
              onPressed: () {},
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('PAST FAILURES', style: TextStyle(fontSize: 25, color: Color(0xFF1E1E1F), fontFamily: 'rockwell', letterSpacing: 5)),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
