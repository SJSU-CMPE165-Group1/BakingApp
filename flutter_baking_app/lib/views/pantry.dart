import 'package:flutter/material.dart';
import 'package:flutter_baking_app/theme/colors/light_colors.dart';

class PantryPage extends StatefulWidget {
  @override
  _PantryPageState createState() => _PantryPageState();
}

class _PantryPageState extends State<PantryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BAKING BUDDY Pantry'), //widget.title
          backgroundColor: LightColors.kDarkYellow,
        ),
        backgroundColor: LightColors.kLightYellow,
        body:
        Center(
          child:Text(
            'Choose your ingredients here',
          ),
        )
    );
  }
}
