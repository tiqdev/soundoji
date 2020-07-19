
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soundoji/Constants/UIColors.dart';
import 'package:soundoji/Models/SoundojiObj.dart';

class CategoryList extends StatefulWidget{
  final String title;
  final List<SoundojiObj> list;
  final Function playSound;

  const CategoryList({Key key, this.title, this.list, this.playSound})
      : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList>{
  uiColors _colors;

  @override
  void initState() {
    _colors = new uiColors();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: _colors.uiYellow,
                      fontSize: 36,
                    ),
                  ),
                  /*GestureDetector(
                    onTap: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(
                          color: _colors.defaultWhite,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),*/
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            LimitedBox(
              maxHeight: 90,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.list.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){
                            widget.playSound(index, widget.title);
                          },
                          highlightColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                color: _colors.uiYellowIconBack,
                                boxShadow: [
                                  BoxShadow(
                                      color: _colors.uiYellowShadow ,
                                      blurRadius: 0,
                                      offset: Offset(0, 4)),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                color: Colors.transparent,
                                child: SvgPicture.asset(
                                    widget.list[index].iconPath),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
