import 'package:flutter/material.dart';

class Movie {
  final String imdbId;
  final String type;
  final String title;
  final String year;
  final String bannerPath;

  Movie({
    @required this.imdbId,
    @required this.type,
    @required this.title,
    @required this.year,
    @required this.bannerPath,
  });

  Movie.fromJson(Map<String, String> json)
      : this.imdbId = json["imdbID"],
        this.type = json["Type"],
        this.title = json["Title"],
        this.bannerPath = json["Poster"],
        this.year = json["Year"];

  Map<String, String> toJson() => {
        'imdbID': imdbId,
        'Type': type,
        'Title': title,
        'Poster': bannerPath,
        'Year': year,
      };

  @override
  String toString() {
    return "$title ($year)";
  }
}
