import 'package:bhagavad_gita/screen/provider/gita_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  GitaProvider? w;
  GitaProvider? r;

  @override
  Widget build(BuildContext context) {
    w = context.watch<GitaProvider>();
    r = context.watch<GitaProvider>();
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: w!.isSan?Text(
          w!.verseModelList[w!.index].name!,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ):Text(
          w!.verseModelList[w!.index].nameE!,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )
      ),
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child:Image.asset("assets/image/gita/${w!.index}.jpeg",height: 216,width: 384,fit: BoxFit.cover,), ),
              SliverList.builder(itemBuilder:(context, index) {
                return Container(
                margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey),color: Color(0xffd27a16),),
                    child: Center(child:w!.isSan?Text(w!.verseModelList[w!.index].sholokList![index].hin!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),):Text(w!.verseModelList[w!.index].sholokList![index].eng!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),);
                    },itemCount:  w!.verseModelList[w!.index].sholokList!.length,)
            ],
          ),
    ));
  }
}
