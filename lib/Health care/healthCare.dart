import 'package:flutter/material.dart';
import '../card details/cardDetails.dart';
import '../verify user/verify user.dart';
class helthCare extends StatefulWidget {
  @override
  _helthCareState createState() => _helthCareState();
}

class _helthCareState extends State<helthCare> {
  bool _checkbox1 = false;
  bool _checkbox2 = false;
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

        ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new Container(
                  height: 84,
                  margin: EdgeInsets.only(left: 24, right: 10),
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
                Row(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 24, top: 10),
                      child: Text("- Cheakup",
                          style: TextStyle(
                              fontSize: 16, color: Color(0xff5c5c5c))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24, top: 10),
                      child: Text(
                        "200 EGP",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 24, top: 3),
                      child: Text("- Deworming",
                          style: TextStyle(
                              fontSize: 16, color: Color(0xff5c5c5c))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24, top: 3),
                      child: Text(
                        "150 - 300 EGP",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 24, top: 3),
                      child: Text("- Xray",
                          style: TextStyle(
                              fontSize: 16, color: Color(0xff5c5c5c))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24, top: 3),
                      child: Text(
                        "300 EGP",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 24, top: 3),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Payment Method:",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.green,
                            onChanged: (bool value) {
                              this._checkbox2
                                  ? setState(() => {
                                        this._checkbox2 = false,
                                        this._checkbox1 = true
                                      })
                                  : setState(() => {this._checkbox1 = value});
                            },
                            value: this._checkbox1,
                          ),
                          _checkbox1
                              ? Text("Cash",
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 15))
                              : Text("Cash",
                                  style: TextStyle(
                                      color: Color(0xff5c5c5c), fontSize: 15)),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.green,
                            onChanged: (bool value) {
                              this._checkbox1
                                  ? setState(() => {
                                        this._checkbox1 = false,
                                        this._checkbox2 = true
                                      })
                                  : setState(() => {this._checkbox2 = value});
                            },
                            value: this._checkbox2,
                          ),
                          _checkbox2
                              ? Text(
                                  "Creadit card",
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 15),
                                )
                              : Text(
                                  "Creadit card",
                                  style: TextStyle(
                                      color: Color(0xff5c5c5c), fontSize: 15),
                                ),
                        ],
                      ),

                    ],
                  ),
                ),
                Container(
                  height: 80,
                  padding: EdgeInsets.all(14),
                  child: ListTile(
                    onTap: () {},
                    leading: CircleAvatar(
                      backgroundColor: Color(0xff434343),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                    title: Text(
                      "Add a new card",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 85,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 310,
                  height: 50,
                  child: RaisedButton(
                      color: Colors.blue,
                      onPressed: (){
                        Navigator.of(context).pushNamed('/carddetails');
                      },
                      child: Text(
                        "Confirm",
                        style:
                            TextStyle(fontSize: 20, color: Colors.white),
                      )),
                )
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
