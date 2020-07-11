import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soundoji/Constants/UIColors.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  AudioCache audioCache= new AudioCache();
  uiColors _colors = new uiColors();

  List<String> sounds = [
    'sounds/slap.wav',
    'sounds/pew.wav',
    'sounds/mp5.wav'
  ];

  play(int index) async{
    audioCache.play(sounds[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: _colors.uiBlackP,
        margin: EdgeInsets.only(top: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Soundoji', style: TextStyle(color: _colors.uiBlue, fontSize: 50),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BouncingWidget(
                    duration: Duration(milliseconds: 100),
                    scaleFactor: 1.5,
                    onPressed: () {
                      play(0);
                    },
                    child: Container(
                        color:Colors.transparent,
                        width: MediaQuery.of(context).size.width*0.2,
                        height: MediaQuery.of(context).size.width*0.2,
                        child: SvgPicture.asset("assets/images/slap.svg")),
                  ),
                  SizedBox(width: 20,),
                  BouncingWidget(
                    duration: Duration(milliseconds: 100),
                    scaleFactor: 1.5,
                    onPressed: () {
                      play(1);
                    },
                    child: Container(
                        color:Colors.transparent,
                        width: MediaQuery.of(context).size.width*0.2,
                        height: MediaQuery.of(context).size.width*0.2,
                        child: SvgPicture.asset("assets/images/pew.svg")),
                  ),
                  SizedBox(width: 20,),
                  BouncingWidget(
                    duration: Duration(milliseconds: 100),
                    scaleFactor: 1.5,
                    onPressed: () {
                      play(2);
                    },
                    child: Container(
                        color:Colors.transparent,
                        width: MediaQuery.of(context).size.width*0.2,
                        height: MediaQuery.of(context).size.width*0.2,
                        child: SvgPicture.asset("assets/images/mp5.svg")),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
