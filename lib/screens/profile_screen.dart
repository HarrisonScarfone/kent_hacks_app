import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile-screen';

  String name = "TODO - pull user\'s name from storage";
  int records = 0;  //TODO - count the number of records that were compared against

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 100),
              alignment: Alignment.center,
              child: FlutterLogo(size: 120),
            ),
            SizedBox(height: 30),
            Center(
              child: Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: name, style: TextStyle(fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold)),
                    TextSpan(text: '\n\n\nis not the best at\n\n', style: TextStyle(fontSize: 20, color: Colors.white)),
                    TextSpan(text: records.toString(), style: TextStyle(fontSize: 55, color: Color(0xFFFC8902), fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
                    TextSpan(text: '\n\nthings.', style: TextStyle(fontSize: 20, color: Colors.white)),
                  ]
                ),
                textAlign: TextAlign.center,
              )
            ),
            SizedBox(height: 18),
            Center(
              child: RaisedButton(
                onPressed: () {

                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                textColor: Colors.white,
                padding: EdgeInsets.all(0),
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color(0xFFFF513E),
                        Color(0xFFFC8902),
                        Color(0xFFFFF7BF),
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                        'Past Failures',
                        style: TextStyle(fontSize: 25)
                    ),
                  ),
                ),
              )
            ),
          ],
        ),
        backgroundColor: Color(0xFF1E1E1F),
      ),
    );
  }
}