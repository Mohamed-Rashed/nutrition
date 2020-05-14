import 'package:flutter/material.dart';

class FoodProduct extends StatefulWidget {
  String data;
  FoodProduct({this.data});
  @override
  _FoodProductState createState() => _FoodProductState(data : data);
}

class _FoodProductState extends State<FoodProduct> {
  String data;
  TextEditingController _textController = TextEditingController();

  static List<String> mainDataList = [
    "Product , Cooked",
    "Product , roasted",
    "Product , Cooked",
    "Product , roasted",
    "Product , Cooked",
    "Product , roasted",
    "Product , Cooked",
    "Product , roasted",
    "Product , Cooked",
    "Product , roasted",
    "Product , Cooked",
    "Product , roasted",
  ];

  List<String> newDataList = List.from(mainDataList);

  onItemChanged(String value) {
    setState(() {
      newDataList = mainDataList
          .where((string) => string.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }
  _FoodProductState({this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6200EE),
        title: Text(data+' Product'),
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
                  onTap: (){
                    /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FoodProduct(
                          data : data
                      )),
                    );*/
                  },
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
