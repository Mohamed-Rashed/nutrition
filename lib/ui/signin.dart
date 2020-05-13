import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nutrition/ui/signup.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _showPassword = false;
//  void _toggle() {
//    setState(() {
//      _obscureText = !_obscureText;
//    });
//  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(child: ClipPath(
          child: Container(
            color: Color(0xff6200EE),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                      text: 'Special',
                      style: TextStyle(fontSize: 24, color: Colors.white,fontFamily: 'Montserrat'),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Nutrition',
                          style: TextStyle(
                            fontSize: 24,
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
                        style: TextStyle(fontSize: 14, color: Colors.white,fontStyle: FontStyle.italic),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Image(image: AssetImage('assets/cropped-informatica-logo-3s.png'), height: 24.75, width: 156.65,)
                  ],
                ),
                SizedBox(height: 40,),
                Text('Sign in',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.normal,
                  fontSize: 24,

                ),),
              ],
            ),
          ),
        ), preferredSize: Size.fromHeight(kToolbarHeight + 140 )),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(17),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 33,),
                  Theme(
                    data: new ThemeData(
                      primaryColor: Color(0xff6200EE),
                      primaryColorDark: Colors.red,
                    ),
                    child: TextField(
                      decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        labelText: 'Email address',
                      ),
                    ),
                  ),
                  SizedBox(height: 13,),
                  Theme(
                    data: new ThemeData(
                      primaryColor: Color(0xff6200EE),
                      primaryColorDark: Colors.red,
                    ),
                    child: TextField(
                      obscureText: !_showPassword,
                      decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        labelText: 'Password',
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                          child: Icon(
                              _showPassword ? Icons.visibility : Icons.visibility_off
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 66,),
                  SizedBox(
                    width: 328,
                    height: 36,
                    child: FlatButton(
                      child: Text('SIGN IN',style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),),
                      color: Color(0xff6200EE),
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(42),
                    child: SizedBox(
                      child: RichText(
                        text: TextSpan(
                            text: 'Would you like to',
                            style: TextStyle(fontSize: 16, color: Colors.black,),
                            children: <TextSpan>[
                              TextSpan(
                                recognizer: TapGestureRecognizer()..onTap = () {
                                  Navigator.pop(
                                    context,
                                  );
                                },
                                text: ' sign up',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff6200EE),
                                ),
                              ),
                              TextSpan(
                                text: ' instead?',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ]
                        ),
                      ),
                      width: 246,
                      height: 24,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
