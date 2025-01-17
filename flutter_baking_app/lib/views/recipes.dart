import 'package:flutter/material.dart';
import 'package:flutter_baking_app/theme/colors/light_colors.dart';
import 'package:flutter_baking_app/models/recipe_model.dart';
import 'package:flutter_baking_app/controllers/recipe_api.dart';

class RecipePage extends StatefulWidget {

  RecipePage(Key key) :super(key: key);

  @override
  RecipePageState createState() => RecipePageState();
}

class RecipePageState extends State<RecipePage> {
  Future<List<Recipe>> futureRecipes;

  @override
  void initState() {
    super.initState();
    updateSearch();
  }

  void updateSearch() {
    setState(() {
      futureRecipes = RecipeAPI().fetchRecipesFromIngredients("eggs,flour, milk, bananas", 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Suggested Recipes', style: TextStyle(fontFamily:'Poppins', fontSize: 25, color: Colors.white)), //widget.title
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
            child:FutureBuilder(
                future: futureRecipes,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Recipe> recipes = snapshot.data;
                    return Container(
                        child: ListView.builder(
                          itemCount: 10,
                          padding: const EdgeInsets.all(2.0),
                          itemBuilder: (context, i) {
                            return Card(
                              child: ListTile(
                                title: Text(recipes[i].title,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                )),
                                leading: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    child: Image.network(recipes[i].thumbnail)
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                    );
                  }
                  else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }
                  return CircularProgressIndicator();
                }
            )
        )
    );
  }
}
