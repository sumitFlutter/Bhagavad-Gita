class Verse{
 List<Sholok>? sholokList;
 String? name,nameE;
 Verse({this.sholokList,this.name,this.nameE});
 factory Verse.mapToModel(Map m1)
 {
   List l1 = m1["1"];
   List<Sholok> s1=  l1.map((e) => Sholok.mapToModel(e)).toList();
   return Verse(sholokList: s1,name: m1["name"],nameE: m1["name_e"]);
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