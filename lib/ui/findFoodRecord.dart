import 'package:flutter/material.dart';

class FindFoodRecord extends StatefulWidget {
  @override
  _FindFoodRecordState createState() => _FindFoodRecordState();
}

class _FindFoodRecordState extends State<FindFoodRecord> {
  TextEditingController _textController = TextEditingController();

  static List<String> mainDataList = [
    "Apple",
    "Apricot",
    "Banana",
    "Blackberry",
    "Coconut",
    "Date",
    "Fig",
    "Gooseberry",
    "Grapes",
    "Lemon",
    "Litchi",
    "Mango",
    "Orange",
    "Papaya",
    "Peach",
    "Pineapple",
    "Pomegranate",
    "Starfruit"
  ];

  List<String> newDataList = List.from(mainDataList);

  onItemChanged(String value) {
    setState(() {
      newDataList = mainDataList
          .where((string) => string.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6200EE),
        title: Text('Find Food Record'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),

            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 257,
                  height: 54,
                  child: TextField(
                    controller: _textController,
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        hintText: 'Search Food Database',
                        suffixIcon: GestureDetector(
                          child: Icon(Icons.search),
                        ),
                    ),
                    onChanged: onItemChanged,
                  ),
                ),
                SizedBox(width: 12,),
                Expanded(

                  child: SizedBox(
                    width: 56,
                    height: 56,
                    child: Container(
                      color: Color(0xff01B3DA),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add,color: Colors.white,),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(12.0),
              children: newDataList.map((data) {
                return ListTile(
                  title: Text(data),
                  onTap: ()=> print(data),);
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
