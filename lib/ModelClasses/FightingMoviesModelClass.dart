import 'dart:convert';

class FightingMoviesModelClass {
  String image;
  String title;
  FightingMoviesModelClass({
    required this.image,
    required this.title,
  });

  FightingMoviesModelClass copyWith({
    String? image,
    String? title,
  }) {
    return FightingMoviesModelClass(
      image: image ?? this.image,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'title': title,
    };
  }

  factory FightingMoviesModelClass.fromMap(Map<String, dynamic> map) {
    return FightingMoviesModelClass(
      image: map['image'] as String,
      title: map['title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FightingMoviesModelClass.fromJson(String source) =>
      FightingMoviesModelClass.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'RecommendedMovieClass(image: $image, title: $title)';

  @override
  bool operator ==(covariant FightingMoviesModelClass other) {
    if (identical(this, other)) return true;

    return other.image == image && other.title == title;
  }

  @override
  int get hashCode => image.hashCode ^ title.hashCode;
}
