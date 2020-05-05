import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.only(top: 30, left: 20),
            alignment: Alignment.center,
            color: Colors.deepPurple,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Spice Jet",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 35.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            // fontWeight: FontWeight.w300,
                            // fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "From Mumbai to Bangalore via New Delhi",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            // fontWeight: FontWeight.w300,
                            // fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Goal Jet",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 35.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            // fontWeight: FontWeight.w300,
                            // fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "From Push to New Delhi",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            // fontWeight: FontWeight.w300,
                            // fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                    )
                  ],
                )
              ],
            )));
  }
}
