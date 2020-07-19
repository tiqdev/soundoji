import 'package:flutter/material.dart';
import 'package:soundoji/Constants/UIColors.dart';


class SoundojiLogo extends StatelessWidget {
  const SoundojiLogo({
    Key key,
    @required double width,
    @required uiColors colors,
  }) : _colors = colors, width = width, super(key: key);

  final uiColors _colors;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
          color: _colors.defaultWhite,
          borderRadius: BorderRadius.circular(150)),
      child: Transform.translate(
        offset: Offset(0, -20),
        child: Image.asset(
          'assets/images/logo.png',
          width: width*2/3,
        ),
      ),
    );
  }
}
