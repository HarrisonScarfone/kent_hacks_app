import 'package:flutter/material.dart';
import 'package:kent_hack_app/models/randomizer.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  Widget build(BuildContext context) {
    String recordTitle = 'TODO - get name from database';
    return Scaffold(
    resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            padding: EdgeInsets.only(top: 60),
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/logoappicon.png',
            ),
            //),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Text(
              recordTitle,
              style: TextStyle(fontSize: 24, fontFamily: 'legenddeca', color: Color(0xFF00B4BD)),
            ),
          ),
          SizedBox(height: 50),
          Material(
            child: Container(
                padding: EdgeInsets.only(top: 5, bottom: 5, left: 30, right: 30),
                child: Container(
                    child: Theme(
                      data: Theme.of(context).copyWith(primaryColor: Colors.white,),
                      child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              labelText: 'Record value',
                              fillColor: Color(0xFFFFF7BF),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Color(0xFFFFF7BF),),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFFFF7BF)),
                              ),
                          ),
                          controller: userRecord,
                          keyboardType: TextInputType.number,
                      ),
                    )
                )
            ),
          ),
          SizedBox(height: 10),
          Text(
            'TODO - add unit from database',
            style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic, fontFamily: 'legenddeca', color: Color(0xFF00B4BD)),
          ),
          SizedBox(height: 90),
          Center(
              child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        _nextRecord();
                      },
                      padding: EdgeInsets.all(0),
                      child: Container(
                        width: 170,
                        padding: EdgeInsets.all(10),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                              'SKIP',
                              style: TextStyle(fontSize: 25, color: Color(0xFF1E1E1F), fontFamily: 'rockwell', letterSpacing: 5)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    RaisedButton(
                      onPressed: () {
                        _save(userRecord, recordTitle, context);
                      },
                      padding: EdgeInsets.all(0),
                      child: Container(
                        width: 170,
                        padding: EdgeInsets.all(10),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                              'SUBMIT',
                              style: TextStyle(fontSize: 25, color: Color(0xFF1E1E1F), fontFamily: 'rockwell', letterSpacing: 5)
                          ),
                        ),
                      ),
                    ),
                  ]
              )
          ),
        ],
      ),
    );
  }
}

void _nextRecord(){
  //TODO
}

Future <bool> _save(TextEditingController userRecord, String recordTitle, BuildContext context) async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  var temp = prefs.setDouble(recordTitle, double.parse(userRecord.text));
  //print(recordTitle + ' ' + prefs.getDouble(recordTitle).toString());
  return temp;
}