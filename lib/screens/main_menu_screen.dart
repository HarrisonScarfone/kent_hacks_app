import 'package:flutter/material.dart';
import 'package:kent_hack_app/widgets/category_grid_view_circle.dart';

class MainMenuScreen extends StatelessWidget {
  static const routeName = '/main-menu-screen';

  @override
  Widget build(BuildContext context) {
    String pulledText =
        "A 1,000 mile journey starts with one step. Then again, so does falling in a ditch and breaking your neck.";
    const containerEdge = EdgeInsets.only(bottom: 15);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 11),
            Container(
              alignment: Alignment(0.9, -1.0),
              child: FloatingActionButton(
                backgroundColor: Color(0xFFFFF7BF),
                onPressed: () {},
                child: Icon(Icons.account_circle,
                  size: 55,
                ),
              ),
            ),
            Container(
                child: Image.asset('assets/images/logo.png',
                height: 150,
                  width: 600
                ),
              ),
            SizedBox(height: 50),
            Container(
              width: 350,
              margin: containerEdge,
              child: Text('"$pulledText"', style: TextStyle(fontSize: 25)),
            ),
            SizedBox(height: 25),
            Container(
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border(
                  top: BorderSide(width: 3.0, color: Colors.white),
                  left: BorderSide(width: 3.0, color: Colors.white),
                  right: BorderSide(width: 3.0, color: Colors.white),
                  bottom: BorderSide(width: 3.0, color: Colors.white),
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
                      style: TextStyle(fontSize: 30, fontFamily: 'rockwell'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: containerEdge,
                    child: SizedBox(
                        height: 50,
                        width: 300,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text(
                            'CATEGORIES',
                            style: TextStyle(fontSize: 25, color: Colors.black, letterSpacing: 3),
                          ),
                        )),
                  ),
                  Container(
                    margin: containerEdge,
                    child: SizedBox(
                        height: 50,
                        width: 300,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text(
                            'RANDOM',
                            style: TextStyle(fontSize: 25, color: Colors.black, letterSpacing: 3),
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
