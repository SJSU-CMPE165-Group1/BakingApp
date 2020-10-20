import 'package:flutter/material.dart';
import 'package:flutter_baking_app/theme/colors/light_colors.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Favorited Recipes'), //widget.title
          backgroundColor: LightColors.kGreen,
        ),
        backgroundColor: LightColors.kLightGreen,
        body:
        Center(
          child:Text(
            'View favorite recipes here',
          ),
        )
    );
  }
}
