import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SwapIt',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          toolbarHeight: 60,
          backgroundColor: Color.fromRGBO(20, 20, 20, 1),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            letterSpacing: 1.2,
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromRGBO(20, 20, 20, 1),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
