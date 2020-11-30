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
          title: Text('Search',  style: TextStyle(fontFamily:'Poppins', fontSize: 25, color: Colors.white)),
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
            'Search recipes here',
          ),
        )
    );
  }
}
