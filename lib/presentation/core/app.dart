import 'package:flutter/material.dart';

import '../home/home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SwapIt',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        elevation: 0,
        toolbarHeight: 60,
        backgroundColor: Color.fromRGBO(20, 20, 20, 1),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 23,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
      )),
      home: const Home(),
    );
  }
}
