import 'package:bhagavad_gita/screen/view/details/details_screen.dart';
import 'package:bhagavad_gita/screen/view/home/home_screen.dart';
import 'package:bhagavad_gita/screen/view/splesh/splesh_screen.dart';
import 'package:flutter/material.dart';

Map<String,WidgetBuilder> gitaRoutes={
  "/":(context) => const SpleshScreen(),
  "home":(context) => const HomeScreen(),
  "details":(context) => const DetailsScreen()
};