import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutrition/ui/signup.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void loading() async {
    Future.delayed(Duration(seconds: 10), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUp()));
    });
  }
  @override
  void initState() {
    super.initState();
    loading();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3E00EE),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 300.0, 0, 0),
            child: Column(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                      text: 'Special',
                      style: TextStyle(fontSize: 36, color: Colors.white,fontFamily: 'Montserrat'),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Nutrition',
                          style: TextStyle(
                            fontSize: 36,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                          text: 'by',
                          style: TextStyle(fontSize: 24, color: Colors.white , fontStyle: FontStyle.italic),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Image(image: AssetImage('assets/cropped-informatica-logo-3s.png'), height: 29.86, width: 189,)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

