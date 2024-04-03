import 'package:bhagavad_gita/screen/provider/gita_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/theme_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(title: Text("Bhagavad Gita"),actions: [
        IconButton(onPressed: () {
          context.read<ThemeProvider>().setTheme();
        },icon: Icon(context.watch<ThemeProvider>().themeMode))
    ],),
    body: Container(height: MediaQuery.sizeOf(context).height,
    width: MediaQuery.sizeOf(context).width,
      color:  Color(0xffd27a16),
      padding: EdgeInsets.all(10),
      child:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, "details");
            context.read<GitaProvider>().getAdhaay(index);
          },
          child: Container(margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(5),
          color: Colors.orange.shade400,
          child: Column(mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/image/gita/$index.jpeg",height: 108,width: 192,fit: BoxFit.cover,)),
            SizedBox(height: 10,),
            Text("${context.read<GitaProvider>().verseModelList[index].name}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
          ],)
            ,),
        );
      },itemCount: context.read<GitaProvider>().verseModelList.length,)
    ),));
  }
}
