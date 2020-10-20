import 'package:flutter/material.dart';
import 'package:flutter_baking_app/theme/colors/light_colors.dart';

class ShoppingListPage extends StatefulWidget {
  @override
  _ShoppingListPageState createState() => _ShoppingListPageState();
}

class _ShoppingListPageState extends State<ShoppingListPage> {
  List<String> items = [];
  //reads input from the user
  var _c = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'), //widget.title
        backgroundColor: LightColors.kGreen,
      ),
      backgroundColor: LightColors.kLightGreen,
      body: ListView.builder(   //prints out list
        itemCount: items.length,
        itemBuilder:(context, index){
          //prints shopping list
          return ListTile(
            title: Text('${items[index]}'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              color: LightColors.kRed,
              onPressed: () {
                print("Pressed delete!"); //test if registered button press
                setState((){
                  //delete item
                  items.remove('${items[index]}');
                }
                );
              }
            ),
          );
        }
      ),
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text(
      //         'Shopping List',
      //       ),
      //
      //     ],
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          addItem(context);
        },
        backgroundColor: LightColors.kGreen,
        child: Icon(Icons.add),
      ), // This trailing comma
    );
  }

  void addItem(BuildContext context){
    // var alertDialog = AlertDialog(
    //   title: Text("Add Item"),
    //   content: TextField(
    //     onSubmitted: (String value){
    //       items.add(value);
    //       print(value);
    //     },
    //   ),
    //   actions: <Widget> [
    //     new FlatButton(
    //         child: new Text('Add'),
    //         onPressed: (){
    //           Navigator.of(context).pop();
    //         },
    //     )
    //   ]
    // );
    //
    // showDialog(
    //   context: context,
    //   builder: (BuildContext context){
    //     return alertDialog;
    //   }
    // );

    showDialog(child: new Dialog(
      child: new Column(
        children: <Widget> [
          new TextField(
            decoration: new InputDecoration(hintText: "Add Item"),
            controller: _c,
          ),
          new FlatButton(
              child: new Text("Add"),
              onPressed: (){
                setState(() {
                  if(_c.text != "") {   //don't add empty items
                    items.add(_c.text);
                  }
                  print(_c.text); //test to see if it was receiving input
                  items.forEach((element) => print(element)); //test objects are being added to the list
                  _c.text = ""; //reset the dialog box to be blank
                });
                Navigator.pop(context);
              },
          )
        ]
      )
    ), context: context

    );
  }

}
