class MovieModel {
  final title;
  final poster;

  String get getTitle => title;
  String get getPoster => poster;

  MovieModel(this.title, this.poster);

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      json["Title"],
      json["Poster"],
    );
  }
}
