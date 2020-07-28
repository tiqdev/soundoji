import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:soundoji/Components/SoundojiBar.dart';
import 'package:soundoji/Constants/UIColors.dart';
import 'Pages/HomePage.dart';

void main() {
  runApp(Soundoji());
}

class Soundoji extends StatelessWidget {
  uiColors _colors = uiColors();
  @override
  Widget build(BuildContext context) {

    //Status Bar and Text Color
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: _colors.defaultWhite,
        statusBarBrightness: Brightness.dark
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Soundoji',
      theme: ThemeData(
        fontFamily: 'Cera',
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

