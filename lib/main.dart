import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './screens/settings_screen.dart';
import './screens/bill_screen.dart';
import './screens/doctors_screen.dart';
import './screens/login_screen.dart';
import './screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkTheme = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TAJ',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColorLight: Colors.black),
      darkTheme: ThemeData(
        primaryColor: Colors.red[900],
        canvasColor: Colors.grey[800],
        cardColor: Colors.grey,
        primaryColorLight: Colors.white,
      ),
      themeMode: darkTheme ? ThemeMode.dark : ThemeMode.light,
      home: HomeScreen(title: ' ',),
      initialRoute: LoginScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(title: ' ',),
        LoginScreen.routeName: (context) => LoginScreen(),
        DoctorsScreen.routeName: (context) => DoctorsScreen(),
        BillScreen.routeName: (context) => BillScreen(),
        SettingsScreen.routeName: (context) =>
            SettingsScreen(darkTheme: darkTheme, toggleDark: toggleDark),
      },
    );
  }

  void toggleDark() {
    setState(() => darkTheme = !darkTheme);
  }
}