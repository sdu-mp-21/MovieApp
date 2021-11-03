 class Movie{
   Movie({
    this.bannerUrl,
    this.posterUrl,
    this.title,
    this.rating,
    this.genre,
    this.storyline,
    this.actors,
  });
  late final String? bannerUrl;
  late final String? posterUrl;
  late final String? title;
  late final double? rating;
  late final List<String>? genre;
  late final String? storyline;
  late final List<Actor>? actors;
}



class Actor {
  Actor({
    this.name,
    this.avatarUrl,
  });

  final String? name;
  final String? avatarUrl;
}
