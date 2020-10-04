import 'package:flutter/material.dart';
import 'package:flutter_baking_app/theme/colors/light_colors.dart';

class PantryPage extends StatefulWidget {
  @override
  _PantryPageState createState() => _PantryPageState();
}

class _PantryPageState extends State<PantryPage> {
  List<bool> bakingList = List.generate(3, (index) => false);
  List<bool> dairyList = List.generate(4, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BAKING BUDDY Pantry'), //widget.title
          backgroundColor: LightColors.kDarkYellow,
        ),
        backgroundColor: LightColors.kLightYellow,
        body:
        Column (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Text('Baking',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: LightColors.kBlue,
              ),
            ),
            ToggleButtons(
              children: [
                Text('AP Flour'),
                Text('Baking Soda'),
                Text('Shortening'),
              ],
              isSelected: bakingList,
              onPressed: (int i) {
                setState(() {
                  bakingList[i] = !bakingList[i];
                });
              },
              fillColor: LightColors.kDarkYellow,
              color: Colors.black54,
              selectedColor: Colors.black87,
              borderRadius: BorderRadius.circular(20),
            ),
            Text('Dairy',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: LightColors.kBlue,
              ),
            ),
            ToggleButtons(
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
              fillColor: LightColors.kDarkYellow,
              color: Colors.black54,
              selectedColor: Colors.black87,
              borderRadius: BorderRadius.circular(20),
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
        )
    );
  }
}
