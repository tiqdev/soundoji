import 'package:flutter/material.dart';
import 'package:soundoji/Constants/UIColors.dart';

import 'LogoTitle.dart';

class Copyright extends StatelessWidget {
  const Copyright({
    Key key,
    @required uiColors colors,
  }) : _colors = colors, super(key: key);

  final uiColors _colors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal : 4.0),
      child: FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: LogoTitle(
                colors: _colors,
              ),
            ),
            SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('from', style: TextStyle(
                    fontFamily: 'Cera',
                    color: _colors.uiGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.w700)),
                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'tiqdesign', style: TextStyle(
                            fontFamily: 'Cera',
                            color: _colors.uiBlack,
                            fontSize: 24,
                            fontWeight: FontWeight.w900)
                        ),
                        TextSpan(text : '©2020', style: TextStyle(
                            fontFamily: 'Cera',
                            color: _colors.uiBlack,
                            fontSize: 24,
                            fontWeight: FontWeight.w900)),
                      ]
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}