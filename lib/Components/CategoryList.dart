import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soundoji/Constants/UIColors.dart';
import 'package:soundoji/Models/SoundojiObj.dart';

class CategoryList extends StatefulWidget {

  final String title;
  final List<SoundojiObj>list;
  final Function playSound;

  const CategoryList({
    Key key,
    this.title,
    this.list,
    this.playSound
  }): super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
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
              padding: const EdgeInsets.fromLTRB(8.0,0.0,8.0,0.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.title, style: TextStyle(color: _colors.uiBlack, fontSize: 36),),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Text('View All', style: TextStyle(color: _colors.uiBlack, fontSize: 20),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2,),
            LimitedBox(
              maxHeight: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.list.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: BouncingWidget(
                        duration: Duration(milliseconds: 100),
                        scaleFactor: 1.2,
                        onPressed: () {
                          widget.playSound(index, widget.title);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _colors.defaultWhite,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xffc9c9c9),
                                      blurRadius: 5,
                                      offset: Offset(0, 0)),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                color: Colors.transparent,
                                child: SvgPicture.asset(widget.list[index].iconPath),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
