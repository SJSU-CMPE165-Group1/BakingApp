import 'package:flutter/material.dart';
import 'package:flutter_baking_app/theme/colors/light_colors.dart';

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

class TestView extends StatefulWidget {
  @override
  _TestViewState createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('TEST PAGE'),
      )
    );
  }
}


class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {

    const List<Widget> _navbarOptions = <Widget> [
      Text(
        'Select Ingredients Here',
      ),
      Text (
        'View recipes based off of ingredients here',
      ),
      Text (
        'Search recipes here',
      ),
      Text (
        'View favorite recipes here',
      ),
      Text (
        'Shopping list here',
      ),
    ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }
    
    return Scaffold(
      appBar: AppBar(
        title: Text('B-B-B-BAKING BUDDY'), //widget.title
        backgroundColor: LightColors.kDarkYellow,
      ),
      body: Center(
        child: _navbarOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            title: Text('Pantry'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_dining),
            title: Text('Recipes'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorites'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted),
            title: Text('List'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: LightColors.kBlue,
        onTap: _onItemTapped,
      ),
    );;
  }
}
