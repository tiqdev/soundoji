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
  List<SoundojiObj> vehiclesList;

  List<SoundojiObj> soundojis = [
    SoundojiObj(category : 'Funny' ,soundPath: 'sounds/slap.wav', iconPath: 'assets/images/slap.svg'),
    SoundojiObj(category : 'Funny' ,soundPath: 'sounds/pew.wav', iconPath: 'assets/images/pew.svg'),
    SoundojiObj(category : 'Funny' ,soundPath: 'sounds/flop.mp3', iconPath: 'assets/images/flop.svg'),
    SoundojiObj(category : 'Funny' ,soundPath: 'sounds/mp5.wav', iconPath: 'assets/images/mp5.svg'),
    SoundojiObj(category : 'Funny' ,soundPath: 'sounds/water.mp3', iconPath: 'assets/images/water.svg'),
    SoundojiObj(category : 'Funny' ,soundPath: 'sounds/arrow.mp3', iconPath: 'assets/images/arrow.svg'),
    SoundojiObj(category : 'Funny' ,soundPath: 'sounds/kid.mp3', iconPath: 'assets/images/baby.svg'),
    SoundojiObj(category : 'Funny' ,soundPath: 'sounds/kiss.mp3', iconPath: 'assets/images/kiss.svg'),

    SoundojiObj(category : 'Animals' ,soundPath: 'sounds/cow.mp3', iconPath: 'assets/images/cow.svg'),
    SoundojiObj(category : 'Animals' ,soundPath: 'sounds/dog.mp3', iconPath: 'assets/images/dog.svg'),
    SoundojiObj(category : 'Animals' ,soundPath: 'sounds/cat.mp3', iconPath: 'assets/images/cat.svg'),
    SoundojiObj(category : 'Animals' ,soundPath: 'sounds/sheep.mp3', iconPath: 'assets/images/sheep.svg'),
    SoundojiObj(category : 'Animals' ,soundPath: 'sounds/horse.mp3', iconPath: 'assets/images/horse.svg'),
    SoundojiObj(category : 'Animals' ,soundPath: 'sounds/bird.mp3', iconPath: 'assets/images/bird.svg'),
    SoundojiObj(category : 'Animals' ,soundPath: 'sounds/lion.mp3', iconPath: 'assets/images/lion.svg'),

    SoundojiObj(category: 'Vehicles', soundPath: 'sounds/car.mp3', iconPath:'assets/images/car.svg'),

  ];

  play(int index, String category) async {
    switch (category){
      case 'Funny' :
        audioCache.play(funList[index].soundPath); break;
      case 'Animals':
        audioCache.play(animalList[index].soundPath); break;
      case 'Vehicles':
        audioCache.play(vehiclesList[index].soundPath); break;
    }
  }

  filterByCategory(String category){
    return soundojis.where((element) => element.category == category).toList();
  }

  @override
  void initState() {
    funList = filterByCategory('Funny');
    animalList = filterByCategory('Animals');
    vehiclesList = filterByCategory('Vehicles');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal : 12.0),
      child: ListView(
        children: [
          CategoryList(title: 'Funny',list: funList,playSound:play, ),
          CategoryList(title: 'Animals',list: animalList,playSound:play, ),
          CategoryList(title: 'Vehicles',list: vehiclesList,playSound:play, ),
        ],
      ),
    );
  }
}
