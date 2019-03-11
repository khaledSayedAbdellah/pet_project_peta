import 'package:flutter/material.dart';

class cardDetails extends StatefulWidget {
  @override
  _cardDetailsState createState() => _cardDetailsState();
}

class _cardDetailsState extends State<cardDetails> {
  bool _checkbox1 = false;
  List listOfDropdownMenuItems = ["INR", "USD", "SGD", "EUR", "PND"];
  @override
  Widget build(BuildContext context) {
    var _dropitems;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //   new Container(
//          decoration: new BoxDecoration(
//            image: new DecorationImage(
//              image: new AssetImage(""),
//              fit: BoxFit.cover,
//            ),
//          ),
//        ),
          ListView(
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new Container(
                    alignment: Alignment.topRight,
                    height: 35,
                    width: 400,
                    margin: EdgeInsets.only(left: 24, right: 30, top: 25),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              '/welcome', (Route<dynamic> route) => false);
                        },
                        icon: Image.asset(
                          'image/cancel.png',
                          width: 200,
                          height: 200,
                          color: Colors.black,
                        )),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(left: 25, bottom: 2),
                        child: Text(
                          "Card details",
                          style: TextStyle(
                              fontSize: 34,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, bottom: 2),
                    child: Text(
                      "Add your card details, You will be prompt again to confirm payment.",
                      style: TextStyle(fontSize: 14, color: Color(0xff5c5c5c)),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Image.asset(
                          "image/visa.png",
                          height: 50,
                          width: 60,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset(
                          "image/master.png",
                          height: 40,
                          width: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset(
                          "image/american.png",
                          height: 40,
                          width: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset(
                          "image/Dicover.png",
                          height: 40,
                          width: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset(
                          "image/paypal.png",
                          height: 50,
                          width: 60,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 10, bottom: 0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "CARD NUMBER",
                          style:
                              TextStyle(color: Color(0Xff2f4fa1), fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 15),
                    child: TextField(
                      controller: null,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        suffixIcon: Image.asset(
                          "image/visa.png",
                          height: 50,
                          width: 60,
                        ),
                      ),
                    ),
                  ),
                  Row(
//                    mainAxisAlignment:MainAxisAlignment.spaceAround ,
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 70, top: 8, left: 24),
                        child: Text(
                          "NAME OF THE CARD",
                          style:
                              TextStyle(color: Color(0Xff2f4fa1), fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only( top: 8, left: 35),
                        child: Text(
                          "CVC",
                          style:
                              TextStyle(color: Color(0Xff2f4fa1), fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      Expanded(

                        child: Padding(
                          padding: const EdgeInsets.only(left: 24,right:35),
                          child: TextField(
                            keyboardType: TextInputType.text,
                          ),
                        ),
                        flex: 9,
                      ),
                      Expanded(
                        flex:3,
                        child: Padding(
                          padding: const EdgeInsets.only( right:20,),
                          child: TextField(
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15, left: 24, right: 24),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "EXPIRE DATE",
                              style: TextStyle(
                                  color: Color(0Xff2f4fa1), fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            RaisedButton(),
                            RaisedButton(),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        new Checkbox(
                          value: _checkbox1,
                          activeColor: Colors.green,
                          onChanged: (bool newValue) {
                            setState(() {
                              _checkbox1 = newValue;
                            });
                          },
                        ),
                        _checkbox1
                            ? Text('Set as default payment',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 15))
                            : Text('Set as default payment',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff33a12f),
        onPressed: () {},
        child: Icon(Icons.check),
      ),
    );
  }
}
