import 'package:flutter/material.dart';
import 'package:flutter_baking_app/theme/colors/light_colors.dart';

class PantryPage extends StatefulWidget {
  @override
  _PantryPageState createState() => _PantryPageState();
}

class _PantryPageState extends State<PantryPage> {
  List<bool> bakingList = List.generate(4, (index) => false);
  List<bool> dairyList = List.generate(4, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BAKING BUDDY Pantry'), //widget.title
          backgroundColor: LightColors.kGreen,
        ),
        backgroundColor: LightColors.kLightGreen,
        body:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Text('Dry Ingredients',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: LightColors.kBlue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ToggleButtons(
                  children: [
                    Text('  AP Flour  '),
                    Text('  Baking Soda  '),
                    Text('  Baking Powder  '),
                    Text(' Sugar '),
                  ],
                  isSelected: bakingList,
                  onPressed: (int i) {
                    setState(() {
                      bakingList[i] = !bakingList[i];
                    });
                  },
                  fillColor: LightColors.kGreen,
                  color: Colors.black54,
                  selectedColor: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Text('Wet Ingredients',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: LightColors.kBlue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ToggleButtons(
                  children: [
                    Text('Milk'),
                    Text('Condensed Milk'),
                    Text('Evaporated Milk'),
                    Text('Eggs'),
                  ],
                  isSelected: dairyList,
                  onPressed: (int i) {
                    setState(() {
                      dairyList[i] = !dairyList[i];
                    });
                  },
                  fillColor: LightColors.kGreen,
                  color: Colors.black54,
                  selectedColor: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Text('Fruits',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: LightColors.kBlue,
                ),
              ),
              Text('Vegetables',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: LightColors.kBlue,
                ),
              ),
              Text('Sweeteners',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: LightColors.kBlue,
                ),
              ),
            ],
          ),
        )
    );
  }
}
