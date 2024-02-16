// To parse this JSON data, do
//
//     final puzzle = puzzleFromJson(jsonString);

import 'dart:convert';

List<Puzzle> puzzleFromJson(String str) => List<Puzzle>.from(json.decode(str).map((x) => Puzzle.fromJson(x)));

String puzzleToJson(List<Puzzle> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Puzzle {
  String? image;
  List<String>? puzzle;

  Puzzle({
    this.image,
    this.puzzle,
  });

  factory Puzzle.fromJson(Map<String, dynamic> json) => Puzzle(
    image: json["image"],
    puzzle: json["puzzle"] == null ? [] : List<String>.from(json["puzzle"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "puzzle": puzzle == null ? [] : List<dynamic>.from(puzzle!.map((x) => x)),
  };
}
