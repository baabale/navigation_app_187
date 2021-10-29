import 'package:flutter/material.dart';
import 'package:navigation_app/screens/home.dart';
import 'package:navigation_app/screens/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        SecondScreen.id: (context) => SecondScreen(
              screenName: 'Second Screen *',
            ),
      },
    );
  }
}
