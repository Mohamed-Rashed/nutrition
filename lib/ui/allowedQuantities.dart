import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllowedQuantities extends StatefulWidget {
  @override
  _AllowedQuantitiesState createState() => _AllowedQuantitiesState();
}

class _AllowedQuantitiesState extends State<AllowedQuantities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6200EE),
        title: Text('Allowed Quantities'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 38,),
                Text('Phenylalanine tolerance',style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Color(0xff333333),
                ),),
                SizedBox(height: 10,),
                TextField(
                  decoration: new InputDecoration(
                    labelText: 'mg/kg/day',
                  ),
                ),
                SizedBox(height: 45,),
                Text('Total allowed Phenylalanine',style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Color(0xff333333),
                ),),
                SizedBox(height: 38,),
                FractionalTranslation(
                  translation: Offset(0.0, 0.0),
                  child: Align(
                    child: CircleAvatar(
                      radius: 100.0,
                      backgroundColor: Color(0xff01B3DA),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('20',style: TextStyle(
                            fontSize: 36,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),),
                          Text('mg/kg/day',style: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),),
                        ],
                      ),
                    ),
                    alignment: FractionalOffset(0.5, 0.0),
                  ),
                ),
                SizedBox(height: 85,),
                SizedBox(
                  width: 328,
                  height: 36,
                  child: FlatButton(
                    child: Text('DONE',style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        fontSize: 14
                    ),),
                    color: Color(0xff6200EE),
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AllowedQuantities()),
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
