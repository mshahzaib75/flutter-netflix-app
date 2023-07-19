import 'package:netflix_app/ModelClasses/HorrorMoviesModelClass.dart';
import 'ModelClasses/AnimatedMoviesModelClass.dart';
import 'ModelClasses/ComedyMoviesModelClass.dart';
import 'ModelClasses/FightingMoviesModelClass.dart';
import 'ModelClasses/RecommendedMoviesModelClass.dart';

List movieListForMyList = [];
List movieListForDownloads = [];

List<String> settingList = [
  'Change Password',
  'Change mail',
  'Policy',
  'Log out',
];
List<AnimatedMoviesModelClass> animatedMovieList = [
  AnimatedMoviesModelClass(
      image: 'assets/images/pic_25.png', title: 'London Flies'),
  AnimatedMoviesModelClass(image: 'assets/images/pic_26.png', title: 'Voot'),
  AnimatedMoviesModelClass(
      image: 'assets/images/pic_27.png', title: 'Rikshawala'),
  AnimatedMoviesModelClass(image: 'assets/images/pic_28.png', title: 'Farz'),
  AnimatedMoviesModelClass(
      image: 'assets/images/pic_29.png', title: 'Dharav Bank'),
  AnimatedMoviesModelClass(image: 'assets/images/pic_30.png', title: 'Anamika'),
];

List<RecommendedMoviesModelClass> recomendedMovieList = [
  RecommendedMoviesModelClass(
      image: 'assets/images/pic_1.png', title: 'Selfie'),
  RecommendedMoviesModelClass(
      image: 'assets/images/pic_2.png', title: 'Shazada'),
  RecommendedMoviesModelClass(
      image: 'assets/images/pic_3.png', title: 'Gumrah'),
  RecommendedMoviesModelClass(
      image: 'assets/images/pic_4.png', title: 'Bhoola'),
  RecommendedMoviesModelClass(image: 'assets/images/pic_5.png', title: 'Breed'),
  RecommendedMoviesModelClass(
      image: 'assets/images/pic_6.png', title: 'Kanjoos'),
];
List<HorrorMoviesModelClass> horrorMovieList = [
  HorrorMoviesModelClass(image: 'assets/images/pic_7.png', title: 'Dishkia'),
  HorrorMoviesModelClass(image: 'assets/images/pic_8.png', title: 'Murga'),
  HorrorMoviesModelClass(image: 'assets/images/pic_9.png', title: 'Republic'),
  HorrorMoviesModelClass(
      image: 'assets/images/pic_10.png', title: 'Happy Womens Day'),
  HorrorMoviesModelClass(image: 'assets/images/pic_11.png', title: 'Shazam'),
  HorrorMoviesModelClass(image: 'assets/images/pic_12.png', title: 'Dishkia'),
];
List<FightingMoviesModelClass> fightingMovieList = [
  FightingMoviesModelClass(image: 'assets/images/pic_13.png', title: 'Tandoor'),
  FightingMoviesModelClass(image: 'assets/images/pic_14.png', title: 'Rudra'),
  FightingMoviesModelClass(
      image: 'assets/images/pic_15.png', title: 'Return Of Sender'),
  FightingMoviesModelClass(
      image: 'assets/images/pic_16.png', title: 'Bhai Jan'),
  FightingMoviesModelClass(
      image: 'assets/images/pic_17.png', title: 'Ji Wife Ji'),
  FightingMoviesModelClass(
      image: 'assets/images/pic_18.png', title: 'Evil Rise'),
];
List<ComedyMoviesModelClass> comedyMovieList = [
  ComedyMoviesModelClass(image: 'assets/images/pic_19.png', title: 'Challenge'),
  ComedyMoviesModelClass(image: 'assets/images/pic_18.png', title: 'Evil Rise'),
  ComedyMoviesModelClass(
      image: 'assets/images/pic_20.png', title: 'Rain Bastra'),
  ComedyMoviesModelClass(
      image: 'assets/images/pic_21.png', title: 'Night Manager'),
  ComedyMoviesModelClass(image: 'assets/images/pic_22.png', title: 'Hush Hush'),
  ComedyMoviesModelClass(
      image: 'assets/images/pic_23.png', title: 'Shiksha Mandi'),
  ComedyMoviesModelClass(image: 'assets/images/pic_24.png', title: 'Rangbazz'),
];
