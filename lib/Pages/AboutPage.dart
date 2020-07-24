import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soundoji/Components/Copyright.dart';
import 'package:soundoji/Components/SoundojiLogo.dart';
import 'package:soundoji/Constants/UIColors.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {


  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  uiColors _colors = new uiColors();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: _colors.defaultWhite,
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          width: MediaQuery.of(context).size.width,
          color: _colors.uiYellow,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      color: _colors.defaultWhite,
                      size: 40,
                    ),
                    onPressed: () => Navigator.pop(context)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0,12.0,20.0,8.0),
                child: InkWell(
                    child: Image.asset('assets/images/contact.png',width: 40,),
                    onTap: () => _launchURL('mailto:tariqkaya24@gmail.com?subject=Soundoji&')
                ),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 6,
                child: Container(
                  decoration: BoxDecoration(
                      color: _colors.uiYellow,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(0),
                          topLeft: Radius.circular(0),
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                            color:_colors.uiYellowShadow,
                            blurRadius: 0,
                            offset: Offset(0, 5)),
                      ]),
                  child: Card(
                    elevation: 0,
                    color: _colors.uiYellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(0),
                          topLeft: Radius.circular(0),
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                    ),
                    margin: EdgeInsets.all(0),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20.0,5,20,10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SoundojiLogo(colors: _colors,width: 120,),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Soundoji', style: TextStyle(color: _colors.defaultWhite, fontFamily: 'Bangers', fontSize: 32),),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Soundoji is a funny and educational mobile application that contains instructive sounds for children. In this application, you can hear the sounds and have fun by touching the emojis. \n\n Completely Free and Offline!',
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.center,
                            textScaleFactor: 0.9,
                            maxLines: 8,
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 26,
                                color: _colors.defaultWhite,
                                height: 1.1,
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                  flex: 1,
                      child: Center(child: Copyright(colors: _colors))),
            ],
          ),
        ),
      ]),
    ));
  }
}
