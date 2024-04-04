import 'package:bhagavad_gita/utils/json_helper.dart';
import 'package:flutter/material.dart';

import '../../utils/share_helper.dart';
import '../model/verse_model.dart';

class GitaProvider with ChangeNotifier{
  bool isSan=true;
  List<Verse> verseModelList=[];
  ShareHelper shareHelper=ShareHelper();
  JsonHelper jsonHelper=JsonHelper();
  int index=0;
  void changeLan()
  async {
    isSan=!isSan;
    shareHelper.saveLang(pLang: isSan);
    isSan=(await shareHelper.applyLang())!;
    notifyListeners();
  }
  void getLang()
  async {
    if (await shareHelper.applyLang() == null) {
      isSan = true;
    }
    else {
      isSan = (await shareHelper.applyLang())!;
    }
    notifyListeners();
  }
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