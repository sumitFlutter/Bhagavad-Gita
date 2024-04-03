import 'package:bhagavad_gita/screen/provider/gita_provider.dart';
import 'package:bhagavad_gita/screen/provider/theme_provider.dart';
import 'package:bhagavad_gita/utils/declaration/provider_declaration.dart';
import 'package:bhagavad_gita/utils/routes/gita_routes.dart';
import 'package:bhagavad_gita/utils/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: providerDeclaration,
        child: Consumer2<GitaProvider,ThemeProvider>(
          builder: (context, value,value2, child) {
            value.getVerse();
            value2.getTheme();
            value2.theme=value2.pTheme;
           return MaterialApp(
             debugShowCheckedModeBanner: false,
             theme: light,
             darkTheme: dark,
             themeMode: value2.mode,
             routes: gitaRoutes,
           );
          },
            ))
  );
}