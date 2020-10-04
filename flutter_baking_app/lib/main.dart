import 'package:flutter/material.dart';
import 'package:flutter_baking_app/theme/colors/light_colors.dart';
import 'package:flutter_baking_app/views/pantry.dart';
import 'package:flutter_baking_app/views/recipes.dart';
import 'package:flutter_baking_app/views/search.dart';
import 'package:flutter_baking_app/views/favorites.dart';
import 'package:flutter_baking_app/views/shopping_list.dart';

GlobalKey<RecipePageState> _keyRecipePage = GlobalKey();

class Destination {
  const Destination(this.index, this.title, this.icon);
  final int index;
  final String title;
  final IconData icon;
}

const List<Destination> destinations = <Destination> [
  Destination(0, 'Pantry', Icons.shopping_basket),
  Destination(1, 'Recipes', Icons.local_dining),
  Destination(2, 'Search', Icons.search),
  Destination(3, 'Favorites', Icons.favorite),
  Destination(4, 'List', Icons.format_list_bulleted),
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NavBar(),
    );
  }
}

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}


class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  List<Widget> _children = [PantryPage(), RecipePage(_keyRecipePage), SearchPage(), FavoritesPage(), ShoppingListPage()];

  @override
  Widget build(BuildContext context) {

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;

        //we call updateSearch every time the recipes tab is pressed on the bottom bar. this is done really messily since we need to make RecipePage public and keep track of its key
        //note that 1 is the index of RecipePage
        if(_selectedIndex == 1) {
          _keyRecipePage.currentState.updateSearch();
        }
      });
    }
    
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _children,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: destinations.map((Destination destination) {
          return BottomNavigationBarItem(
            icon: Icon(destination.icon),
            title: Text(destination.title),
          );
        }).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: LightColors.kBlue,
        onTap: _onItemTapped,
      ),
    );;
  }
}
