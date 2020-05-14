import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FavoritFoods extends StatefulWidget {
  @override
  _FavoritFoodsState createState() => _FavoritFoodsState();
}

class _FavoritFoodsState extends State<FavoritFoods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6200EE),
        title: Text('Favorite Foods'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                SizedBox(height: 67,),
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 100.0,
                  backgroundImage: AssetImage("assets/unnamed.png"),
                ),
                SizedBox(height: 20,),
                Text('You Have No Favorite',style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                ),),
                Text('Foods Yet',style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                ),),
                SizedBox(height: 100,),
                SizedBox(
                  width: 320,
                  height: 36,
                  child: FlatButton(
                    child: Text('ADD FOOD RECORD',style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        fontSize: 14
                    ),),
                    color: Color(0xff6200EE),
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FavoritFoods()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
