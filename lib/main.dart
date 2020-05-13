import 'package:flutter/material.dart';
import 'package:nutrition/ui/signup.dart';
import 'package:nutrition/ui/splashScreen.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/' : (context) => SplashScreen(),
    '/home' : (context) => SignUp(),
  },
));

class MyApp extends StatefulWidget{

  @override
  _State createState() => new _State();
}

class _State extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Boshy Developer'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('Hi There')
          ],
        ),
      ),
    );
  }
}