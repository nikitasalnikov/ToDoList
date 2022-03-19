import 'package:flutter/material.dart';
import 'package:ver_1_2/ui/scaffold/scaffold.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      home: const ScaffoldApp(),
    );
  }
}
