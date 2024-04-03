import 'package:bhagavad_gita/screen/provider/gita_provider.dart';
import 'package:bhagavad_gita/screen/provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providerDeclaration=[
  ChangeNotifierProvider.value(value: GitaProvider()),
  ChangeNotifierProvider.value(value: ThemeProvider())
];