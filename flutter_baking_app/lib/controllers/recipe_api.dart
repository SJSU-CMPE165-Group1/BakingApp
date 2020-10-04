import 'dart:convert';
import 'package:flutter_baking_app/models/recipe_model.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';

class RecipeAPI {
  Future<Recipe> sampleFetch() async {
    final response = await http.get('http://www.recipepuppy.com/api/?i=onions,garlic&p=1');
    print("API CALL: Sample");
    if (response.statusCode == 200) {
      print("API Success");
      var data = json.decode(response.body);
      var rest = data["results"] as List;
      return Recipe.fromJson(rest.elementAt(0));
    }
    else {
      throw Exception('Failed to load recipe');
    }
  }

  Future<List<Recipe>> fetchRecipesFromIngredients(String ingredients, int page) async {
    var response = await http.get('http://www.recipepuppy.com/api/?i=${ingredients}&p=${page}');
    print("API CALL: fetch from ingredients");
    if (response.statusCode == 200) {
      print("API Success");
      var data = json.decode(response.body);
      var rest = data["results"] as List;
      return rest.map((item) => Recipe.fromJson(item)).toList();
    }
    else {
      throw Exception('Failed to load recipes');
    }
  }

  Future<List<Recipe>> fetchRecipesByKeyword(String ingredients, String query, int page) async {
    var response = await http.get('http://www.recipepuppy.com/api/?i=${ingredients}&q=${query}&p=${page}');
    print("API CALL: fetch by keyword");
    if (response.statusCode == 200) {
      print("API Success");
      var data = json.decode(response.body);
      var rest = data["results"] as List;
      return rest.map((item) => Recipe.fromJson(item)).toList();
    }
    else {
      throw Exception('Failed to load recipes');
    }
  }
}
/*
To test API in chrome, copy and paste in the console:
fetch('http://www.recipepuppy.com/api/{argument here}')
  .then(response => response.json())
  .then(json => console.log(json))
 */