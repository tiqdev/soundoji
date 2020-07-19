import 'package:flutter/material.dart';
import 'package:soundoji/Components/Copyright.dart';
import 'package:soundoji/Components/SoundojiLogo.dart';
import 'package:soundoji/Constants/UIColors.dart';

class AboutPage extends StatelessWidget {
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
                          SoundojiLogo(colors: _colors,width: 150,),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since rinit to make a type specimen book.',
                            overflow: TextOverflow.fade,
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
