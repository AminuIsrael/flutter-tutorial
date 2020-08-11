import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.only(left: 10.0, top: 40.0),
          alignment: Alignment.center,
          color: Colors.deepPurple,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Text(
                    "Flight",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 35,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700),
                  )),
                  Expanded(
                      child: Text(
                    "Flight from Lagos to Abuja",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700),
                  ))
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    "Flight",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 35,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700),
                  )),
                  Expanded(
                      child: Text(
                    "Flight from Lagos to Ibadan",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700),
                  ))
                ],
              ),
              FlightImageAsset(),
              FlightBookButton()
            ],
          )),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/pic.jpg');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
        onPressed: () {
          bookFlight(context);
        },
        color: Colors.deepOrange,
        child: Text(
          "Book your flight",
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w700),
        ),
        elevation: 6.0,
      ),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Flight Booked Successfully"),
      content: Text("Have a pleasant flight"),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
