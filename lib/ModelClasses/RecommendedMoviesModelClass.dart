import 'dart:convert';

class RecommendedMoviesModelClass {
  String image;
  String title;
  RecommendedMoviesModelClass({
    required this.image,
    required this.title,
  });

  RecommendedMoviesModelClass copyWith({
    String? image,
    String? title,
  }) {
    return RecommendedMoviesModelClass(
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

  factory RecommendedMoviesModelClass.fromMap(Map<String, dynamic> map) {
    return RecommendedMoviesModelClass(
      image: map['image'] as String,
      title: map['title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RecommendedMoviesModelClass.fromJson(String source) =>
      RecommendedMoviesModelClass.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'RecommendedMovieClass(image: $image, title: $title)';

  @override
  bool operator ==(covariant RecommendedMoviesModelClass other) {
    if (identical(this, other)) return true;

    return other.image == image && other.title == title;
  }

  @override
  int get hashCode => image.hashCode ^ title.hashCode;
}
