import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soundoji/Components/CategoryList.dart';
import 'package:soundoji/Models/SoundojiObj.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  AudioCache audioCache = new AudioCache();
  List<SoundojiObj> funList;
  List<SoundojiObj> animalList;

  List<SoundojiObj> soundojis = [
    SoundojiObj(category : 'Fun' ,soundPath: 'sounds/slap.wav', iconPath: 'assets/images/slap.svg'),
    SoundojiObj(category : 'Fun' ,soundPath: 'sounds/pew.wav', iconPath: 'assets/images/pew.svg'),
    SoundojiObj(category : 'Fun' ,soundPath: 'sounds/mp5.wav', iconPath: 'assets/images/mp5.svg'),
    SoundojiObj(category : 'Fun' ,soundPath: 'sounds/arrow.mp3', iconPath: 'assets/images/arrow.svg'),
    SoundojiObj(category : 'Fun' ,soundPath: 'sounds/kid.mp3', iconPath: 'assets/images/baby.svg'),
    SoundojiObj(category : 'Animal' ,soundPath: 'sounds/cow.mp3', iconPath: 'assets/images/cow.svg'),
    SoundojiObj(category : 'Animal' ,soundPath: 'sounds/dog.mp3', iconPath: 'assets/images/dog.svg'),
    SoundojiObj(category : 'Animal' ,soundPath: 'sounds/sheep.mp3', iconPath: 'assets/images/sheep.svg'),
    SoundojiObj(category : 'Animal' ,soundPath: 'sounds/horse.mp3', iconPath: 'assets/images/horse.svg'),
    SoundojiObj(category : 'Animal' ,soundPath: 'sounds/bird.mp3', iconPath: 'assets/images/bird.svg'),
    SoundojiObj(category : 'Animal' ,soundPath: 'sounds/lion.mp3', iconPath: 'assets/images/lion.svg'),
  ];

  play(int index, String category) async {
    switch (category){
      case 'Fun' :
        audioCache.play(funList[index].soundPath); break;
      case 'Animal':
        audioCache.play(animalList[index].soundPath); break;
    }
  }

  filterByCategory(String category){
    return soundojis.where((element) => element.category == category).toList();
  }

  @override
  void initState() {
    funList = filterByCategory('Fun');
    animalList = filterByCategory('Animal');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal : 12.0),
      child: ListView(
        children: [
          CategoryList(title: 'Fun',list: funList,playSound:play, ),
          CategoryList(title: 'Animal',list: animalList,playSound:play, ),
          CategoryList(title: 'Fun',list: funList,playSound:play, ),
          CategoryList(title: 'Animal',list: animalList,playSound:play, ),
          CategoryList(title: 'Fun',list: funList,playSound:play, ),
          CategoryList(title: 'Animal',list: animalList,playSound:play, ),
        ],
      ),
    );
  }
}
