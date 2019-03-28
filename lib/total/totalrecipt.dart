import 'package:flutter/material.dart';

class totalrecipt extends StatefulWidget {
  @override
  _totalreciptState createState() => _totalreciptState();
}

class _totalreciptState extends State<totalrecipt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Stack(
      children: <Widget>[
//        new Container(
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
                flex: 5,
                child: new Container(
                  margin: EdgeInsets.only(left: 24, right: 10, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RaisedButton.icon(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          onPressed: () {
                            Navigator.pop(context, true);
                          },
                          icon: Image.asset(
                            "image/back.jpg",
                            height: 16,
                            width: 16,
                          ),
                          label: Row(
                            children: <Widget>[
                              Icon(
                                Icons.arrow_back,
                                color: Color(0xff5c5c5c),
                              ),
                              Text(
                                "Back",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          )),
                      RaisedButton.icon(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                '/welcome', (Route<dynamic> route) => false);
                          },
                          icon: Icon(
                            Icons.close,
                            color: Colors.grey.shade600,
                          ),
                          label: Text(
                            "Cancel",
                            style: TextStyle(color: Colors.grey),
                          ))
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text(
                          "Please review the updated bill",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24, bottom: 30),
                    child: Text(
                      "Amodification on your bilr has been done based on your request. ",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        "Health care service for a dog:",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 24, top: 10),
                    child: Text("- Cheakup",
                        style: TextStyle(fontSize: 16, color: Color(0xff5c5c5c))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24, top: 10),
                    child: Text(
                      "200 EGP",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ],
              ), ),

              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 24, top: 3),
                      child: Text("- Deworming",
                          style: TextStyle(fontSize: 16, color: Color(0xff5c5c5c))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24, top: 3),
                      child: Text(
                        "300 EGP",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex:2,
                  child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 24, top: 3),
                    child: Text("- Xray",
                        style: TextStyle(fontSize: 16, color: Color(0xff5c5c5c))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24, top: 3),
                    child: Text(
                      "300 EGP",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ],
              ) ),

              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 24, top: 3),
                      child: Text("- Transportaion 10KM",
                          style: TextStyle(fontSize: 16, color: Color(0xff5c5c5c))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24, top: 3),
                      child: Text(
                        "4 EGP/KM",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text(
                          "Total",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Text("840EGP", style: TextStyle(fontSize: 18)),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  width: MediaQuery.of(context).size.width-30,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                      color: Colors.blue,
                      onPressed: () {},
                      child: Text(
                        "Confirm",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  padding:EdgeInsets.only(bottom: 10),
                  width: MediaQuery.of(context).size.width-30,
                  child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Decline",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
