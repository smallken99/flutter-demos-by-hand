import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      alignment: Alignment.center,
      // alignment: Alignment.bottomLeft,
      color: Colors.deepPurple,
      // width: 200.0, // 外面要包Center() width, height 才會有作用
      // height: 100.0,
      // margin: EdgeInsets.all(30.0), // margin 元件跟元件之間的距離
      margin: EdgeInsets.only(left: 40.0, top: 30),
      // padding: EdgeInsets.all(20.0), // padding 元件跟外層之間的距離
      child: Text(
        "Flight",
        textDirection: TextDirection.ltr,
      ),
    ));
  }
}
