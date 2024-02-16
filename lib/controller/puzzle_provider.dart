import 'dart:convert';

import 'package:drag_n_drop/model/puzzle_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PuzzleProvider extends ChangeNotifier {

  List<Puzzle> puzzlelist = [];
  
  void getdata() async{
    var filedata = await rootBundle.loadString("lib/controller/puzzle_json.json");
    jsonDecode(filedata);
    puzzlelist = puzzleFromJson(filedata);
    notifyListeners();
  }
}