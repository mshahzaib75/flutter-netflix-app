import 'dart:convert';

class AnimatedMoviesModelClass {
  String image;
  String title;
  AnimatedMoviesModelClass({
    required this.image,
    required this.title,
  });

  AnimatedMoviesModelClass copyWith({
    String? image,
    String? title,
  }) {
    return AnimatedMoviesModelClass(
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

  factory AnimatedMoviesModelClass.fromMap(Map<String, dynamic> map) {
    return AnimatedMoviesModelClass(
      image: map['image'] as String,
      title: map['title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnimatedMoviesModelClass.fromJson(String source) =>
      AnimatedMoviesModelClass.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'RecommendedMovieClass(image: $image, title: $title)';

  @override
  bool operator ==(covariant AnimatedMoviesModelClass other) {
    if (identical(this, other)) return true;

    return other.image == image && other.title == title;
  }

  @override
  int get hashCode => image.hashCode ^ title.hashCode;
}
