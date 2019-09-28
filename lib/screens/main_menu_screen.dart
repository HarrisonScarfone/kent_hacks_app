import 'package:flutter/material.dart';

class MainMenuScreen extends StatelessWidget {
  static const routeName = '/main-menu-screen';

  @override
  Widget build(BuildContext context) {
    String pulledText =
        "A 1,000 mile journey starts with one step. Then again, so does falling in a ditch and breaking your neck.";
    const containerEdge = EdgeInsets.only(bottom: 30);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Text('Someone Did It',
                      style: TextStyle(fontSize: 40),
                    textAlign: TextAlign.center
                  ),
                  Text('Better',
                  style: TextStyle(fontSize: 60),
                    textAlign: TextAlign.center
                  ),
                ],
              ),
            ),
            Container(
              width: 350,
              margin: containerEdge,
              child: Text('"$pulledText"', style: TextStyle(fontSize: 21)),
            ),
            SizedBox(height: 100),
            Container(
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border(
                  top: BorderSide(width: 3.0, color: Colors.black),
                  left: BorderSide(width: 3.0, color: Colors.black),
                  right: BorderSide(width: 3.0, color: Colors.black),
                  bottom: BorderSide(width: 3.0, color: Colors.black),
                ),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  Container(
                    width: 350,
                    margin: containerEdge,
                    child: Text(
                      'See How You Compare',
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: containerEdge,
                    child: const SizedBox(
                        height: 50,
                        width: 300,
                        child: RaisedButton(
                          child: Text(
                            'Random',
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        )),
                  ),
                  Container(
                    margin: containerEdge,
                    child: const SizedBox(
                        height: 50,
                        width: 300,
                        child: RaisedButton(
                          child: Text(
                            'Categories',
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
