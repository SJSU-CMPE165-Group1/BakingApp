class Recipe {
  String link;
  String ingredients;
  String thumbnail;
  String title;

  Recipe({this.link, this.ingredients, this.thumbnail, this.title});

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      link: json['href'],
      ingredients: json['ingredients'],
      thumbnail: json['thumbnail'],
      title: json['title'],
    );
  }
}