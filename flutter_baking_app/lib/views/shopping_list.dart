import 'package:flutter/material.dart';
import 'package:flutter_baking_app/theme/colors/light_colors.dart';

class ShoppingListPage extends StatefulWidget {
  @override
  _ShoppingListPageState createState() => _ShoppingListPageState();
}

class _ShoppingListPageState extends State<ShoppingListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shopping List'), //widget.title
          backgroundColor: LightColors.kDarkYellow,
        ),
        backgroundColor: LightColors.kLightYellow,
        body:
        Center(
          child:Text(
            'Shopping list here',
          ),
        )
    );
  }
}
