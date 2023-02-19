// @dart=2.9
import 'dart:html';
import 'package:tugas1/Home/home.dart';
import 'package:tugas1/Screens/Welcome/welcome_screen.dart';
import 'package:tugas1/onboard/onboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';



void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FUTSALL DOMPU',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

        home:
         HomePage(),
         //OnBoard(),
        // HomeScreen(),
        // WelcomeScreen(),

    );

  }
}


