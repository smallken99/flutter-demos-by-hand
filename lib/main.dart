import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Stateful App Example",
    home: FavoriteCity(),
  ));
}

class FavoriteCity extends StatefulWidget {
  FavoriteCity({Key key}) : super(key: key);

  @override
  _FavoriteCityState createState() => _FavoriteCityState();
}

class _FavoriteCityState extends State<FavoriteCity> {
  String nameCity = "";
  @override
  Widget build(BuildContext context) {
    debugPrint("Favorite City widget is created.");
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful App Example'),
        ),
        body: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextField(
                // onSubmitted: (String userInput) { // 輸入Enter才會觸發改變
                onChanged: (String userInput) {
                  // 邊打字當中馬上觸發改變
                  setState(() {
                    debugPrint(
                        "set State is called , this tell framework to redraw the favCity widget");
                    nameCity = userInput;
                  });
                },
              ),
              Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Text(
                    'Your best city is $nameCity',
                    style: TextStyle(fontSize: 20.0),
                  ))
            ],
          ),
        ));
  }
}
