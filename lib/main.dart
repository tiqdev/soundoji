import 'package:flutter/material.dart';
import 'package:soundoji/Constants/UIColors.dart';
import 'Pages/HomePage.dart';

void main() {
  runApp(Soundoji());
}

class Soundoji extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Soundoji',
      theme: ThemeData(
        fontFamily: 'Bangers',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  uiColors _colors;
  @override
  void initState() {
    _colors = uiColors();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _colors.uiBlackP,
      body: HomePage(),
    );
  }
}

