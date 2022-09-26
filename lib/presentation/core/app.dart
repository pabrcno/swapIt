import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapit/presentation/auth/login/login_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SwapIt',
      theme: ThemeData(
        primaryColor: Colors.green[200],
        appBarTheme: const AppBarTheme(
          shadowColor: Colors.grey,
          elevation: 1,
          toolbarHeight: 60,
          backgroundColor: Color.fromRGBO(20, 20, 20, 1),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            letterSpacing: 1,
          ),
        ),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.green[200],
          selectionColor: Colors.green[200],
          selectionHandleColor: Colors.green[200],
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(20, 20, 20, 1),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(165, 214, 167, 1),
            ),
          ),
          labelStyle: TextStyle(
            fontSize: 18,
          ),
          prefixIconColor: Color.fromRGBO(165, 214, 167, 1),
          floatingLabelStyle: TextStyle(
            color: Color.fromRGBO(165, 214, 167, 1),
          ),
          fillColor: Color.fromRGBO(80, 80, 80, 1),
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(20, 20, 20, 1),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.green[600],
          foregroundColor: Colors.white,
          sizeConstraints: const BoxConstraints.tightFor(
            width: 65,
            height: 65,
          ),
          elevation: 0,
        ),
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
