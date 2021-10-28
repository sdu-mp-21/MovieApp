  Movie({
    this.bannerUrl,
    this.posterUrl,
    this.title,
    this.rating,
    this.genre,
    this.storyline,
    this.actors,
  });

  final String? bannerUrl;
  final String? posterUrl;
  final String? title;
  final double? rating;
  final List<String>? genre;
  final String? storyline;
  final List<Actor>? actors;
}

class Actor {
  Actor({
    this.name,
    this.avatarUrl,
  });

  final String? name;
  final String? avatarUrl;
}
