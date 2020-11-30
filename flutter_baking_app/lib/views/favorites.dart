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
          title: Text('Favorited Recipes',  style: TextStyle(fontFamily:'Poppins', fontSize: 25, color: Colors.white)), //widget.title
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "images/BakingBuddy.png",
            ),
          ),
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
