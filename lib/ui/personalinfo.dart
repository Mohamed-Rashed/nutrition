import 'package:flutter/material.dart';
import 'package:nutrition/ui/allowedQuantities.dart';

class PersonalInfo extends StatefulWidget {
  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6200EE),
        title: Text('Personal info'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 18,),
                Text('Basic info',style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Color(0xff333333),
                ),),
                SizedBox(height: 14,),
                TextField(
                  decoration: new InputDecoration(
                    labelText: 'Gender',
                  ),
                ),
                SizedBox(height: 12,),
                TextField(
                  decoration: new InputDecoration(
                    labelText: 'Age',
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 15,),
                Text('Physique info',style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Color(0xff333333),
                ),),
                SizedBox(height: 14,),
                TextField(
                  decoration: new InputDecoration(
                    labelText: 'Current Weight',

                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 12,),
                TextField(
                  decoration: new InputDecoration(
                    labelText: 'Height',
                  ),
                ),
                SizedBox(height : 15),
                Text('Physical activity',style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Color(0xff333333),
                ),),
                SizedBox(height: 14,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    DropdownButton<String>(
                      isExpanded: true,
                      hint: Text('Select daily activity level'),
                      items: <String>['A', 'B', 'C', 'D'].map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ],
                ),
                SizedBox(height: 52,),
                SizedBox(
                  width: 328,
                  height: 36,
                  child: FlatButton(
                    child: Text('NEXT',style: TextStyle(
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
