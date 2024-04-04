import 'dart:convert';

import 'package:bhagavad_gita/screen/model/verse_model.dart';
import 'package:flutter/services.dart';

class JsonHelper{
  Future<List<Verse>> getSholok()
  async {
    String jsonString=await rootBundle.loadString("assets/json/verse.json");
    List verseJsonList=jsonDecode(jsonString);
   List<Verse> verseList= verseJsonList.map((e) => Verse.mapToModel(e)).toList();
   return verseList;
  }
}