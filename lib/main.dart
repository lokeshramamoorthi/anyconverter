import 'package:anyconverter/screens/coversionscreen.dart';
import 'package:anyconverter/screens/unitselector.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Any Unit Converter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UnitSelectorScreen(),
      routes: {
        // When navigating to the "/second" route, build the SecondScreen widget.
        UnitSelectorScreen.routeName: (context) => UnitSelectorScreen(),
        ConversionScreen.routeName: (context) => ConversionScreen(),
      },
    );
  }
}
