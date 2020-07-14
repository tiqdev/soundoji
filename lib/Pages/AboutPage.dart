import 'package:flutter/material.dart';
import 'package:soundoji/Components/LogoTitle.dart';
import 'package:soundoji/Constants/UIColors.dart';

class AboutPage extends StatelessWidget {
  uiColors _colors = new uiColors();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: _colors.uiYellow,
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back, color: _colors.defaultWhite,size: 40,),
                onPressed: ()=>  Navigator.pop(context)
              ),
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                  color: _colors.defaultWhite,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xfff6f6f6),
                        blurRadius: 0,
                        offset: Offset(0, 8)),
                  ]),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LogoTitle(
                      colors: _colors,
                    ),
                    Text(
                      'Bu uygulama komik sesleri bir araya getirerek, insanlara güzen anlar yaşatmak için üretildi. Bununla birlikte çocuklarınıza hayvanları sesleri ile öğrenme şansı tanıyor.',
                      style: TextStyle(fontSize: 25, height: 1.2),
                    ),
                    Text('Created By tiqdesign'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
