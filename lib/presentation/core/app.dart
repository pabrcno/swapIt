import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapit/presentation/auth/login/auth_gate.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SwapIt',
      theme: ThemeData(
        primaryColor: Colors.lightGreen,
        appBarTheme: AppBarTheme(
          shadowColor: Colors.grey,
          elevation: 1,
          toolbarHeight: 60,
          backgroundColor: const Color.fromRGBO(15, 15, 15, 1),
          titleTextStyle: TextStyle(
            color: Colors.grey[100],
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            letterSpacing: 1,
          ),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.lightGreen,
          selectionColor: Colors.lightGreen,
          selectionHandleColor: Colors.lightGreen,
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
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.lightGreen,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.lightGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.lightGreen,
            side: const BorderSide(
              color: Colors.lightGreen,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.lightGreen,
          accentColor: Colors.green,
          backgroundColor: Colors.black,
          brightness: Brightness.dark,
        ),
        highlightColor: Colors.lightGreen,
        scaffoldBackgroundColor: const Color.fromRGBO(20, 20, 20, 1),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.green[600],
          foregroundColor: Colors.grey[100],
          sizeConstraints: const BoxConstraints.tightFor(
            width: 65,
            height: 65,
          ),
          elevation: 0,
        ),
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
    );
  }
}
