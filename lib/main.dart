import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String pulledText = "Aweful Quote";
    const containerEdge =  EdgeInsets.only(bottom: 30);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 350,
              margin: containerEdge,
              child: Text('"$pulledText"',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 100),
            Container(
              width: 350,
              margin: containerEdge,
              child: Text('See How You Compare',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 50),
            Container(
              decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
                    left: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
                    right: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
                  )
              ),
              child: Column(
                children: <Widget>[
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
                        )
                    ),
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
                        )
                    ),
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

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
