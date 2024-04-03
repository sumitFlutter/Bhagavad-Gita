import 'package:bhagavad_gita/utils/json_helper.dart';
import 'package:flutter/material.dart';

import '../model/verse_model.dart';

class GitaProvider with ChangeNotifier{
  List<Verse> verseModelList=[];
  JsonHelper jsonHelper=JsonHelper();
  int index=0;
  void getVerse()
  async {
    verseModelList=await jsonHelper.getSholok();
  }
  void getAdhaay(int i)
  {
    index=i;
    notifyListeners();
  }
}