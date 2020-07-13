import 'package:flutter/material.dart';
import 'package:soundoji/Constants/UIColors.dart';

class LogoTitle extends StatelessWidget {
  const LogoTitle({
    Key key,
    @required uiColors colors,
  }) : _colors = colors, super(key: key);

  final uiColors _colors;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Soundoj', style: TextStyle(fontSize: 36, color: _colors.uiYellow ),),
        Transform.translate(
            offset: Offset(-5,0),
            child: Icon(Icons.music_note, size:30, color: _colors.uiYellow,)),
      ],
    );
  }
}
