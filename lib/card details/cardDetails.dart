import 'package:flutter/material.dart';

class cardDetails extends StatefulWidget {
  @override
  _cardDetailsState createState() => _cardDetailsState();
}

class _cardDetailsState extends State<cardDetails> {
  String dropdownValue = '2019';
  String  dropdownmonth='1';
  bool _checkbox1 = false;
  @override
  Widget build(BuildContext context) {
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

              Container(
                height: MediaQuery.of(context).size.height,
                child: new Column(
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Container(
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(left: 24, right: 30, top: 30),
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
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
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
                    ),

                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25, bottom: 2),
                        child: Text(
                          "Add your card details, You will be prompt again to confirm payment.",
                          style: TextStyle(fontSize: 16, color: Color(0xff5c5c5c)),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
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
                    ),

                    Expanded(
                      flex: 2,
                      child: Padding(
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
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
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
                    ),

                    Expanded(
                      flex: 2,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 70, top: 33, left: 24),
                            child: Text(
                              "NAME OF THE CARD",
                              style:
                                  TextStyle(color: Color(0Xff2f4fa1), fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only( top: 33, left: 35),
                            child: Text(
                              "CVC",
                              style:
                                  TextStyle(color: Color(0Xff2f4fa1), fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: new Row(
                        children: <Widget>[
                          Expanded(
                            flex:2,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 24,right:35),
                              child: TextField(
                                keyboardType: TextInputType.text,
                              ),
                            ),

                          ),
                          Expanded(
                            flex:1,
                            child: Padding(
                              padding: const EdgeInsets.only( right:20,),
                              child: TextField(
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 6,
                        child:Container(
                          padding: EdgeInsets.only(top: 15, left: 24, right: 24),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "EXPIRE DATE",
                                    style: TextStyle(
                                        color: Color(0Xff2f4fa1), fontSize: 14),
                                  ),
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
                                  DropdownButton<String>(
                                    hint: Text("Select Year"),
                                    value: dropdownValue,
                                    onChanged: (String newValue) {
                                      setState(() {
                                        dropdownValue = newValue;
                                      });
                                    },
                                    items: <String>['2019', '2020', '2021', '2022']
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    })
                                        .toList(),
                                  ),

                                  DropdownButton<String>(
                                    hint: Text("Select Year"),
                                    value: dropdownmonth,
                                    onChanged: (String newValue) {
                                      setState(() {
                                        dropdownmonth = newValue;
                                      });
                                    },
                                    items: <String>['1', '2', '3', '4','5', '6', '7', '8','9', '10', '11', '12']
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    })
                                        .toList(),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                    ),
                   
                    Expanded(
                      flex: 10,
                      child: Container(
                        padding: EdgeInsets.only(bottom:80,left: 20,),
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
                    ),

                  ],
                ),
              ),

        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff33a12f),
        onPressed: () {
          Navigator.of(context).pushNamed('/Total');
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
