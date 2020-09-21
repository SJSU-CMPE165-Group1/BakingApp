import 'package:flutter/material.dart';
import 'package:flutter_baking_app/theme/colors/light_colors.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Search'), //widget.title
          backgroundColor: LightColors.kDarkYellow,
        ),
        backgroundColor: LightColors.kLightYellow,
        body:
        Center(
          child:Text(
            'Search recipes here',
          ),
        )
    );
  }
}
