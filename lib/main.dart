import 'package:flutter/material.dart';
import 'package:soundoji/Components/CustomAppBar.dart';
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
        primaryColor: Colors.white,
        accentColor: Colors.grey,
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: _colors.defaultWhite,
        body: HomePage(),
        appBar: SoundojiBar(height: 80,),
        extendBodyBehindAppBar: true,
      ),
    );
  }
}

