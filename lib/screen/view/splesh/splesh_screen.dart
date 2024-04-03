import 'package:flutter/material.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),() => Navigator.pushReplacementNamed(context, "home"),);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xffd27a16),
      body:Center(child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/image/logo/logo.png",height: 120,width: 120,),
          SizedBox(height: 5,),
          Text("Shreemad Bhagvad Geeta",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
        ],
      ),),
    ));
  }
}
