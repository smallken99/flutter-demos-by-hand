import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      padding: EdgeInsets.only(top: 40, left: 20),
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
          ),
          FlightImageAsset(),
          FlightBookButton()
        ],
      ),
    ));
  }
}

class FlightImageAsset extends StatelessWidget {
  const FlightImageAsset({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/flight.png');
    Image image = Image(
      image: assetImage,
      width: 250,
      height: 250,
    );
    return Container(
      child: image,
    );
  }
}

class FlightBookButton extends StatelessWidget {
  const FlightBookButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
        color: Colors.deepOrange,
        child: Text(
          'Book Your Flight',
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w700),
        ),
        elevation: 6.0,
        onPressed: () {
          bookFlight(context);
        },
      ),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text('Flight Booked Successfuly'),
      content: Text('Have a plesant flight'),
    );
    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
