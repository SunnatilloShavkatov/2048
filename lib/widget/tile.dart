import 'package:flutter/material.dart';
import 'package:game2048/util/mycolor.dart';

// ignore: must_be_immutable
class TileWidget extends StatefulWidget {
  String number;
  double width, height;
  int color;
  double size;

  TileWidget(this.number, this.width, this.height, this.color, this.size):super();

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<TileWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Center(
        child: Text(
          widget.number,
          style: TextStyle(
            fontSize: widget.size,
            fontWeight: FontWeight.bold,
            color: Color(MyColor.fontColorTwoFour),
          ),
        ),
      ),
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: Color(widget.color),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
    );
  }
}
