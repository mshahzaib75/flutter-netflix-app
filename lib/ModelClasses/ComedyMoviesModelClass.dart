import 'dart:convert';

class ComedyMoviesModelClass {
  String image;
  String title;
  ComedyMoviesModelClass({
    required this.image,
    required this.title,
  });

  ComedyMoviesModelClass copyWith({
    String? image,
    String? title,
  }) {
    return ComedyMoviesModelClass(
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

  factory ComedyMoviesModelClass.fromMap(Map<String, dynamic> map) {
    return ComedyMoviesModelClass(
      image: map['image'] as String,
      title: map['title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ComedyMoviesModelClass.fromJson(String source) =>
      ComedyMoviesModelClass.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'RecommendedMovieClass(image: $image, title: $title)';

  @override
  bool operator ==(covariant ComedyMoviesModelClass other) {
    if (identical(this, other)) return true;

    return other.image == image && other.title == title;
  }

  @override
  int get hashCode => image.hashCode ^ title.hashCode;
}
