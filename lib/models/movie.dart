

class Movie {

  final String title;
  final String posterUrl;

  Movie({this.title, this.posterUrl});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        title: json["Title"],
        posterUrl: json["Poster"]
    );
  }

}