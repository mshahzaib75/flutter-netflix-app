import 'dart:convert';

class HorrorMoviesModelClass {
  String image;
  String title;
  HorrorMoviesModelClass({
    required this.image,
    required this.title,
  });

  HorrorMoviesModelClass copyWith({
    String? image,
    String? title,
  }) {
    return HorrorMoviesModelClass(
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

  factory HorrorMoviesModelClass.fromMap(Map<String, dynamic> map) {
    return HorrorMoviesModelClass(
      image: map['image'] as String,
      title: map['title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory HorrorMoviesModelClass.fromJson(String source) =>
      HorrorMoviesModelClass.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'RecommendedMovieClass(image: $image, title: $title)';

  @override
  bool operator ==(covariant HorrorMoviesModelClass other) {
    if (identical(this, other)) return true;

    return other.image == image && other.title == title;
  }

  @override
  int get hashCode => image.hashCode ^ title.hashCode;
}
