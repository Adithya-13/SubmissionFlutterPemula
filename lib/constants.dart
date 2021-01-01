import 'package:flutter/material.dart';

import 'model/movie.dart';

const Color kBackground = Color(0xFFe9effb);

const List<String> genre = [
  "Drama",
  "Horor",
  "Action",
  "Sci-fi",
  "Crime",
  "Fantasy",
  "Romance",
  "Musical",
  "Adventure",
  "Thriller",
  "Animation",
];

const String loremIpsum =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec enim quam, feugiat at tortor sed, efficitur iaculis augue. Phasellus dapibus ligula eros. Suspendisse potenti. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus lacinia lorem ac urna aliquam malesuada. Aenean enim purus, vestibulum ac elementum eu, pharetra ut lacus. Nunc consequat tincidunt nunc, sed tristique purus egestas nec. Duis nec urna nunc. Nulla nec scelerisque nulla, sit amet pretium sem. Vestibulum mollis odio vel dui ultrices commodo. Fusce non dapibus mauris, in luctus est. Vestibulum aliquet commodo risus a facilisis. Aenean quis arcu tellus. Nulla non convallis dolor, non viverra diam. Etiam egestas dapibus lorem in porttitor.Suspendisse rutrum justo vitae imperdiet bibendum. Cras a arcu tincidunt, tincidunt nisi vitae, congue orci. Donec diam sem, fringilla quis lorem non, aliquet tincidunt tortor. Morbi a tellus";

List<Movie> movies = [
  Movie(
      title: "A Star Is Born",
      duration: "2h 15m",
      genre: <String>[
        "Musical",
        "Drama",
        "Romance",
      ],
      poster: "poster_a_start_is_born.jpg",
      rate: "7.3"),
  Movie(
      title: "Alita the Battle Angel",
      duration: "2h 15m",
      genre: <String>[
        "Animation",
        "Action",
        "Sci-fi",
        "Romance",
        "Thriller",
        "Adventure",
      ],
      poster: "poster_alita.jpg",
      rate: "9.2"),
  Movie(
      title: "Aquaman",
      duration: "2h 25m",
      genre: <String>[
        "Action",
        "SuperHero",
        "Fantasy",
        "Sci-fi",
        "Adventure",
      ],
      poster: "poster_aquaman.jpg",
      rate: "7.9"),
  Movie(
      title: "Bohemian Rhapsody",
      duration: "2h 30m",
      genre: <String>[
        "Musical",
        "Drama",
      ],
      poster: "poster_bohemian.jpg",
      rate: "7.3"),
  Movie(
      title: "Cold Persuit",
      duration: "2h 44m",
      genre: <String>[
        "Action",
        "Crimes",
        "Thriller",
      ],
      poster: "poster_cold_persuit.jpg",
      rate: "7.3"),
  Movie(
      title: "Assassin Creed",
      duration: "1h 54m",
      genre: <String>[
        "Action",
        "Sci-fi",
        "History",
        "Adventure",
        "Fantasy",
      ],
      poster: "poster_creed.jpg",
      rate: "7.3"),
  Movie(
      title: "Crimes",
      duration: "2h 14m",
      genre: <String>[
        "Crimes",
        "Thriller",
        "Action",
      ],
      poster: "poster_crimes.jpg",
      rate: "7.3"),
  Movie(
      title: "Glass",
      duration: "2h 15m",
      genre: <String>[
        "Action",
        "Thriller",
        "Superhero",
        "Mystery",
        "Drama",
      ],
      poster: "poster_glass.jpg",
      rate: "6.4"),
  Movie(
      title: "How to Train your Dragon",
      duration: "1h 31m",
      genre: <String>[
        "Animation",
        "Fantasy",
        "Adventure",
        "Drama",
        "Action",
      ],
      poster: "poster_how_to_train.jpg",
      rate: "7.5"),
  Movie(
      title: "Avenger : Infinity War",
      duration: "2h 30m",
      genre: <String>[
        "Action",
        "SuperHero",
        "Sci-fi",
      ],
      poster: "poster_infinity_war.jpg",
      rate: "9.0"),
];
