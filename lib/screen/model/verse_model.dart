class Verse{
 Sholok? sholok;

 Verse({this.sholok});
 factory Verse.mapToModel(Map m1)
 {
   return Verse(sholok: Sholok.mapToModel(m1["1"]));
 }
}
class Sholok{
  num? chNo,vNo;
  String? eng,hin;

  Sholok({this.chNo, this.eng, this.hin,this.vNo});
  factory Sholok.mapToModel(Map m1)
  {
    return Sholok(chNo: m1["chapter_number"],eng: m1["transliteration"],hin: m1["text"],vNo: m1["verse_order"]);
  }
}