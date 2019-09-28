import 'package:flutter/material.dart';

class ComparisonScreen extends StatefulWidget {
  static const routeName = '/comparison-screen';

  @override
  State<StatefulWidget> createState() {
    return _ComparisonScreenState();
  }
}

class _ComparisonScreenState extends State<ComparisonScreen> {
  final userRecord = TextEditingController();

  @override
  String recordTitle = 'TODO - get name from database';
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: <Widget>[
            Container(
              height: 200,
              /*decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFFF513E),
                    Color(0xFFFC8902),
                    Color(0xFFFFF7BF),
                  ],
                ),
              ),*/
              padding: EdgeInsets.only(top: 60),
              alignment: Alignment.center,
              //child: Align(
              //alignment: Alignment.center,
              child: Image.asset(
                'assets/images/logoappicon.png',
                  //height: 150,
                  //width: 600,
              ),
              //),
            ),
            Container(
              padding: EdgeInsets.all(30),
              color: Color(0xFF1E1E1F),
              child: Text(
                recordTitle,
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
            Material(
              child: Container(
                  color: Color(0xFF1E1E1F),
                  padding: EdgeInsets.only(top: 5, bottom: 5, left: 30, right: 30),
                  child: Container(
                      child: Theme(
                        data: Theme.of(context).copyWith(primaryColor: Colors.white,),
                        child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                labelText: 'Record value',
                                fillColor: Color(0xFF1E1E1F),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.white,),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                )
                            ),
                            controller: userRecord,
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              color: Colors.white,
                            )
                        ),
                      )
                  )
              ),
            ),
            SizedBox(height: 10),
            Text(
              'TODO - add unit from database',
              style: TextStyle(color: Colors.white, fontSize: 18, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 50),
            Center(
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          _nextRecord();
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        textColor: Colors.white,
                        padding: EdgeInsets.all(0),
                        child: Container(
                          width: 120,
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
                                'Skip',
                                style: TextStyle(fontSize: 25)
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 50),
                      RaisedButton(
                        onPressed: () {
                          _save(userRecord, context);
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        textColor: Colors.white,
                        padding: EdgeInsets.all(0),
                        child: Container(
                          width: 120,
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
                                'Submit',
                                style: TextStyle(fontSize: 25)
                            ),
                          ),
                        ),
                      ),
                    ]
                )
            ),
          ],
        ),
        backgroundColor: Color(0xFF1E1E1F),
      ),
    );
  }
}

void _nextRecord(){
  //TODO - pull next random record
}

void _save(TextEditingController userRecord, BuildContext context){
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text(
          userRecord.text,
        )
      );
    }
  );
}